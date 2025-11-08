import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart';

class PokemonListPageState {
  final AsyncValue<List<Pokemon3dModel>> pokemonList;
  final bool isFilteredResult;
  final bool isSearchResult;
  final bool isOffline; // set from connectivity check
  final bool isFilterVisible;
  final bool fromCache;
  

  PokemonListPageState({
    required this.pokemonList,
    required this.isFilteredResult,
    required this.isSearchResult,
    required this.isOffline,
    required this.fromCache,
    required this.isFilterVisible,
  });

  PokemonListPageState.initial({
    this.pokemonList = const AsyncValue.loading(),
    this.isOffline = true,
    this.isFilteredResult = false,
    this.isSearchResult = false,
    this.isFilterVisible = false,
    this.fromCache = false,
  });

  PokemonListPageState copyWith({
    AsyncValue<List<Pokemon3dModel>>? pokemonList,
    bool? isFilteredResult,
    bool? isSearchResult,
    bool? isOffline, // set from connectivity check

    bool? isFilterVisible,
    bool? fromCache,
  }) => PokemonListPageState(
    pokemonList: pokemonList ?? this.pokemonList,
    isFilteredResult: isFilteredResult ?? this.isFilteredResult,
    isSearchResult: isSearchResult ?? this.isSearchResult,
    isOffline: isOffline ?? this.isOffline,
    fromCache: fromCache ?? this.fromCache,
    isFilterVisible: isFilterVisible ?? this.isFilterVisible,
  );
}
