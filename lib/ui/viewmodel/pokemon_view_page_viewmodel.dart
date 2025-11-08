import 'dart:async';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart' show StateNotifier;
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/utils/enums.dart';
import 'package:pokedex_3d/core/result/result.dart';
import 'package:pokedex_3d/data/models/evolution_chain_model.dart';
import 'package:pokedex_3d/data/models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/models/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/repository/pokemon_details_repository.dart';
import 'package:pokedex_3d/data/repository/pokemon_evolution_repository.dart';
import 'package:pokedex_3d/data/repository/pokemon_model_list_repository.dart';
import 'package:pokedex_3d/ui/controller/model_controller.dart';
import 'package:pokedex_3d/ui/errors/error_localizer.dart';
import 'package:pokedex_3d/ui/state/pokemon_state.dart';

class PokemonDetailPageViewModel extends StateNotifier<PokemonDetailPageState> {
  final PokemonDetailsRepository _pokemonDetailsRepository;
  final PokemonEvolutionRepository _pokemonEvolutionRepository;
  final Model3dController _modelController;
  final PokemonModelListRepository _pokemonModelListRepository;
  int _activePokemonRequestId = 0;
  int _activeFormRequestId = 0;

  final Logger log = Logger();
  PokemonDetailPageViewModel({
    required PokemonDetailsRepository detailRepo,
    required PokemonEvolutionRepository evolRepo,
    required Model3dController modelController,
    required PokemonModelListRepository pokemonViewedListRepository,
  }) : _pokemonDetailsRepository = detailRepo,
       _pokemonEvolutionRepository = evolRepo,
       _modelController = modelController,
       _pokemonModelListRepository = pokemonViewedListRepository,
       super(PokemonDetailPageState.initial());

  Future<void> _loadModelData(
    String modelUrl,
    int searchPokemonId,
    int searchFormId,
  ) async {
    final modelResponse = await _modelController.updateModel(modelUrl);

    if (searchPokemonId == _activePokemonRequestId &&
        searchFormId == _activeFormRequestId) {
      log.i(
        'searchPokemonId $searchPokemonId searchFormId $searchFormId  _slectedPokemonId $_activePokemonRequestId _slectedFormId$_activeFormRequestId',
      );
      switch (modelResponse) {
        case Ok<String>():
          state = state.copyWith(
            modelPath: AsyncValue.data(
              Uri.file(modelResponse.value).toString(),
            ),
          );
          break;
        case Error<String>():
          state = state.copyWith(
            modelPath: AsyncValue.error(
              ErrorLocalizer.fromAppError(modelResponse.error),
              StackTrace.current,
            ),
          );
          break;
      }
    } else {
      log.w(
        'searchPokemonId $searchPokemonId searchFormId $searchFormId  _slectedPokemonId $_activePokemonRequestId _slectedFormId$_activeFormRequestId',
      );
    }
  }

  Future<void> _loadPokemonDetails(int id, int searchId) async {
    final detailsResponse = await _pokemonDetailsRepository.getPokemonDetails(
      id,
    );

    if (searchId == _activePokemonRequestId) {
      switch (detailsResponse) {
        case Ok<PokemonDetailsModel>():
          final type = PokemonType.parse(detailsResponse.value.types.first);
          state = state.copyWith(
            pokemonInfo: AsyncValue.data(detailsResponse.value),
            dominantColorGradient: [type.color, type.color.withAlpha(200)],
            backgroundImg: type.iconBg,
          );
          break;
        case Error<PokemonDetailsModel>():
          state = state.copyWith(
            pokemonInfo: AsyncValue.error(
              ErrorLocalizer.fromAppError(detailsResponse.error),
              StackTrace.current,
            ),
          );
          break;
      }
    }
  }

  Future<void> _loadEvolutionDetails(int id, int searchId) async {
    final evolutionResponse = await _pokemonEvolutionRepository
        .getEvolutionDetails(id);

    if (searchId == _activePokemonRequestId) {
      switch (evolutionResponse) {
        case Ok<EvolutionDetail>():
          final evolutionOrder = inOrderTraversal(
            evolutionResponse.value.pokemonSpecies,
            [[]],
            0,
          );
          state = state.copyWith(
            evolutionData: AsyncValue.data(evolutionOrder),
          );
          break;
        case Error<EvolutionDetail>():
          state = state.copyWith(
            evolutionData: AsyncValue.error(
              ErrorLocalizer.fromAppError(evolutionResponse.error),

              StackTrace.current,
            ),
          );
          break;
      }
    }
  }

  void selectPokemonFromList({
    required Pokemon3dModel pokemon3d,
    required PokemonDetailsModel pokemon,
    required int index,
  }) async {
    int requestPokemonId = ++_activePokemonRequestId;
    int requestFormId = ++_activeFormRequestId;
    log.i(
      'searchPokemonId $requestPokemonId searchFormId $requestFormId  _slectedPokemonId $_activePokemonRequestId _slectedFormId$_activeFormRequestId',
    );
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
      _loadModelData(
        pokemon3d.forms.first.model,
        requestPokemonId,
        requestFormId,
      ),
      _loadEvolutionDetails(pokemon.id, requestPokemonId),
    ]);

    unawaited(_pokemonModelListRepository.putViewedPokemon(pokemon3d));
  }

  void selectPokemonFromCarousel({
    required Pokemon3dModel pokemon3d,
    required int index,
  }) async {
    int requestPokemonId = ++_activePokemonRequestId;
    int requestFormId = ++_activeFormRequestId;
    log.e("fetching model");
    log.i(
      'searchPokemonId $requestPokemonId searchFormId $requestFormId  _slectedPokemonId $_activePokemonRequestId _slectedFormId$_activeFormRequestId',
    );
    state = state.copyWith(currentForm: 0, index: index, pokemon: pokemon3d);
    await Future.wait([
      _loadModelData(
        pokemon3d.forms.first.model,
        requestPokemonId,
        requestFormId,
      ),
      _loadPokemonDetails(pokemon3d.id, requestPokemonId),
      _loadEvolutionDetails(pokemon3d.id, requestPokemonId),
    ]);

    unawaited(_pokemonModelListRepository.putViewedPokemon(pokemon3d));
  }

  void selectForm(int formIndex) async {
    int requestFormId = ++_activeFormRequestId;
    state = state.copyWith(currentForm: formIndex);
    final modelResponse = await _modelController.updateModel(
      state.pokemon.forms[formIndex].model,
    );

    if (requestFormId == _activeFormRequestId) {
      switch (modelResponse) {
        case Ok<String>():
          log.i("selectform method updating state");
          state = state.copyWith(
            modelPath: AsyncValue.data(
              Uri.file(modelResponse.value).toString(),
            ),
          );
          break;

        case Error<String>():
          state = state.copyWith(
            modelPath: AsyncValue.error(
              ErrorLocalizer.fromAppError(modelResponse.error),
              StackTrace.current,
            ),
          );
          break;
      }
    }
  }

  void notifyWebComponent() {
    _modelController.notifyWebView();
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
        specie.triggerDetails.isNotEmpty
            ? specie.triggerDetails.first.minLevel
            : null, // <-- fallback if no details
      ),
    );

    for (final evolves in specie.evolvesTo) {
      inOrderTraversal(evolves, list, level + 1);
    }

    return list;
  }
}
