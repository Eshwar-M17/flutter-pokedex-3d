import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/enums.dart';
import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/data/models/evolution_chain_model.dart';
import 'package:pokedex_3d/data/models/models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/models/models/pokemon/pokemon.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/repository/pokemon_details_repository.dart';
import 'package:pokedex_3d/data/repository/pokemon_evolution_repository.dart';
import 'package:pokedex_3d/data/repository/pokemon_model_list_repository.dart';
import 'package:pokedex_3d/ui/controller/model_controller.dart';
import 'package:pokedex_3d/ui/state/pokemon_state.dart';

class PokemonDetailViewModel extends StateNotifier<PokemonPageState> {
  final PokemonDetailsRepository _pokemonDetailsRepository;
  final PokemonEvolutionRepository _pokemonEvolutionRepository;
  final Model3dController _modelController;
  final PokemonModelListRepository _pokemonModelListRepository;
  final Logger log = Logger();
  PokemonDetailViewModel({
    required PokemonDetailsRepository detailRepo,
    required PokemonEvolutionRepository evolRepo,
    required Model3dController modelController,
    required PokemonModelListRepository pokemonViewedListRepository,
  }) : _pokemonDetailsRepository = detailRepo,
       _pokemonEvolutionRepository = evolRepo,
       _modelController = modelController,
       _pokemonModelListRepository = pokemonViewedListRepository,
       super(PokemonPageState.initial());

  Future<void> _loadModelData(String modelUrl) async {
    final modelResponse = await _modelController.updateModel(modelUrl);
    switch (modelResponse) {
      case Ok<String>():
        state = state.copyWith(
          modelPath: AsyncValue.data(Uri.file(modelResponse.value).toString()),
        );
      case Error<String>():
        log.e(
          " usermessage ${modelResponse.error.userMessage} ${modelResponse.error.message} ",
        );
        state = state.copyWith(
          modelPath: AsyncValue.error(
            modelResponse.error.userMessage ?? modelResponse.error.message,
            StackTrace.current,
          ),
        );
    }
  }

  Future<void> _loadPokemonDetails(int id) async {
    final detailsResponse = await _pokemonDetailsRepository.getPokemonDetails(
      id,
    );
    switch (detailsResponse) {
      case Ok<PokemonDetailsModel>():
        final type = PokemonType.parse(detailsResponse.value.types.first);
        state = state.copyWith(
          pokemonInfo: AsyncValue.data(detailsResponse.value),
          dominantColorGradient: [type.color, type.color.withAlpha(200)],
          backgroundImg: type.icon,
        );
        break;
      case Error<PokemonDetailsModel>():
        state = state.copyWith(
          pokemonInfo: AsyncValue.error(
            detailsResponse.error.userMessage ?? detailsResponse.error.message,
            StackTrace.current,
          ),
        );
    }
  }

  Future<void> _loadEvolutionDetails(int id) async {
    final evolutionResponse = await _pokemonEvolutionRepository
        .getEvolutionDetails(id);
    switch (evolutionResponse) {
      case Ok<Species>():
        final evolutionOrder = inOrderTraversal(
          evolutionResponse.value.pokemonSpecies,
          [[]],
          0,
        );
        state = state.copyWith(evolutionData: AsyncValue.data(evolutionOrder));

      case Error<Species>():
        state = state.copyWith(
          evolutionData: AsyncValue.error(
            evolutionResponse.error.userMessage ??
                evolutionResponse.error.message,
            StackTrace.current,
          ),
        );
    }
  }

  void selectPokemonFromList({
    required Pokemon3dModel pokemon3d,
    required PokemonDetailsModel pokemon,
    required int index,
  }) async {
    final type = PokemonType.parse(pokemon.types.first);
    state = state.copyWith(
      currentForm: 0,
      index: index,
      pokemon: pokemon3d,
      dominantColorGradient: [type.color, type.color.withAlpha(200)],
      backgroundImg: type.iconBg,
      pokemonInfo: AsyncValue.data(pokemon),
    );
    await Future.wait([
      _loadModelData(pokemon3d.forms.first.model),
      _loadEvolutionDetails(pokemon.id),
    ]);

    unawaited(_pokemonModelListRepository.putViewedPokemon(pokemon3d));
  }

  void selectPokemonFromCarousel({
    required Pokemon3dModel pokemon3d,
    required int index,
  }) async {
    state = state.copyWith(currentForm: 0, index: index, pokemon: pokemon3d);
    await Future.wait([
      _loadModelData(pokemon3d.forms.first.model),
      _loadPokemonDetails(pokemon3d.id),
      _loadEvolutionDetails(pokemon3d.id),
    ]);

    unawaited(_pokemonModelListRepository.putViewedPokemon(pokemon3d));
  }

  void selectForm(int formIndex) async {
    state = state.copyWith(currentForm: formIndex);
    final modelResponse = await _modelController.updateModel(
      state.pokemon.forms[formIndex].model,
    );
    switch (modelResponse) {
      case Ok<String>():
        log.i("selectform method updating state");
        state = state.copyWith(
          modelPath: AsyncValue.data(Uri.file(modelResponse.value).toString()),
        );

      case Error<String>():
        state = state.copyWith(
          modelPath: AsyncValue.error(
            modelResponse.error.userMessage ?? modelResponse.error.message,
            StackTrace.current,
          ),
        );
    }
  }

  void notifyWebComponent() {
    _modelController.notifyWebView();
  }

  void selectPokemon({
    required Pokemon3dModel pokemon3d,
    required index,
    PokemonDetailsModel? pokemon,
  }) async {
    state = state.copyWith(
      index: index,
      pokemon: pokemon3d,
      currentForm: 0,
      pokemonInfo: pokemon != null
          ? AsyncValue.data(pokemon)
          : const AsyncValue.loading(),
      evolutionData: const AsyncValue.loading(),
      // modelPath: const AsyncValue.loading(),
    );
    final response = await Future.wait([
      _modelController.updateModel(pokemon3d.forms[0].model),
      _pokemonDetailsRepository.getPokemonDetails(pokemon3d.id),
      _pokemonEvolutionRepository.getEvolutionDetails(pokemon3d.id),
    ]);
    final modelResponse = response[0] as Result<String>;

    switch (modelResponse) {
      case Ok<String>():
        state = state.copyWith(
          modelPath: AsyncValue.data(Uri.file(modelResponse.value).toString()),
        );

      case Error<String>():
        log.e(
          " usermessage ${modelResponse.error.userMessage} ${modelResponse.error.message} ",
        );
        state = state.copyWith(
          modelPath: AsyncValue.error(
            modelResponse.error.userMessage ?? modelResponse.error.message,
            StackTrace.current,
          ),
        );
    }

    final detailsResponse = response[1] as Result<PokemonDetailsModel>;
    switch (detailsResponse) {
      case Ok<PokemonDetailsModel>():
        final type = PokemonType.parse(detailsResponse.value.types.first);
        print('${type.name}  ${type.icon} ${type.color}');

        state = state.copyWith(
          pokemonInfo: AsyncValue.data(detailsResponse.value),
          dominantColorGradient: [type.color, type.color.withAlpha(200)],
          backgroundImg: type.icon,
        );
        break;
      case Error<PokemonDetailsModel>():
        state = state.copyWith(
          pokemonInfo: AsyncValue.error(
            detailsResponse.error.userMessage ?? detailsResponse.error.message,
            StackTrace.current,
          ),
        );
    }

    final evolutionResponse = response[2] as Result<Species>;

    switch (evolutionResponse) {
      case Ok<Species>():
        final evolutionOrder = inOrderTraversal(
          evolutionResponse.value.pokemonSpecies,
          [[]],
          0,
        );
        state = state.copyWith(evolutionData: AsyncValue.data(evolutionOrder));

      case Error<Species>():
        state = state.copyWith(
          evolutionData: AsyncValue.error(
            evolutionResponse.error.userMessage ??
                evolutionResponse.error.message,
            StackTrace.current,
          ),
        );
    }
    unawaited(_pokemonModelListRepository.putViewedPokemon(pokemon3d));
  }
}

List<List<PokemonChainNode>> inOrderTraversal(
  PokemonSpecies specie,
  List<List<PokemonChainNode>> list,
  int level,
) {
  if (level >= list.length) {
    list.add([]);
  }
  list[level].add(
    PokemonChainNode(
      specie.id,
      specie.name,
      specie.evolutionDetails.isNotEmpty
          ? specie.evolutionDetails.first.minLevel
          : null, // <-- fallback if no details
    ),
  );

  for (final evolves in specie.evolvesTo) {
    inOrderTraversal(evolves, list, level + 1);
  }

  return list;
}
