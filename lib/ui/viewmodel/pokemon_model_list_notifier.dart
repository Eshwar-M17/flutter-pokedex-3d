import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/result.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/repository/pokemon_model_list_repository.dart';

class Pokemon3dModelListNotifier
    extends StateNotifier<AsyncValue<List<Pokemon3dModel>>> {
  final log = Logger();
  final PokemonModelListRepository _pokemonModelListRepository;

  Pokemon3dModelListNotifier({
    required PokemonModelListRepository pokemonModelListRepository,
    required AsyncValue<InternetStatus> connection,
  }) : _pokemonModelListRepository = pokemonModelListRepository,
       super(const AsyncValue.loading());

  void getMainPokemonList() async {
    state = const AsyncValue.loading();
    final response = await _pokemonModelListRepository.getMainPokemonList();
    switch (response) {
      case Ok<List<Pokemon3dModel>>():
        state = AsyncValue.data(response.value);

      case Error<List<Pokemon3dModel>>():
        state = AsyncValue.error(
          response.error.userMessage ?? response.error.message,
          StackTrace.current,
        );
    }
  }

  void getViewedPokemonList() async {
    log.d("getting viewed model list cache");
    state = const AsyncValue.loading();
    final response = await _pokemonModelListRepository.getViewedPokemonList();


    switch (response) {
      case Ok<List<Pokemon3dModel>>():
      
        state = AsyncValue.data(response.value);
        break;

      case Error<List<Pokemon3dModel>>():
        log.d("got error on getting viewed model cache");

        state = AsyncValue.error(
          response.error.userMessage ?? response.error.message,
          StackTrace.current,
        );
        break;
    }
  }
}
