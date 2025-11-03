import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/core/enums.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart'
    hide PokemonForm;
import 'package:pokedex_3d/ui/providers/connectivity_notifier.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_3d_model_list_notifier.dart';

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

class PokemonListPageViewmodel extends StateNotifier<PokemonListPageState> {
  final Ref ref;
  late final Pokemon3dModelListNotifier _pokemonListNotifier;

  late final ProviderSubscription<AsyncValue<List<Pokemon3dModel>>>
  _pokeListSub;
  late final ProviderSubscription<AsyncValue<InternetStatus>> _connectivitySub;

  PokemonListPageViewmodel({required this.ref})
    : super(PokemonListPageState.initial()) {
    _pokemonListNotifier = ref.read(
      pokemon3dModelListNotifierProvider.notifier,
    );
    _pokeListSub = ref.listen(pokemon3dModelListNotifierProvider, (prev, next) {
      state = state.copyWith(
        pokemonList: next,
        fromCache: ref
            .read(pokemon3dModelListNotifierProvider.notifier)
            .fromCache,
      );
    }, fireImmediately: true);
    _connectivitySub = ref.listen(connectivityStatusProvider, (prev, next) {
      state = state.copyWith(
        isOffline: next.value == InternetStatus.disconnected,
      );
    }, fireImmediately: true);
  }

  // Open / close filter UI
  void setFilterVisible(bool visible) {
    state = state.copyWith(isFilterVisible: visible);
  }

  void searchPokemon(String value) {
    _pokemonListNotifier.searchPokemon(value);
    state = state.copyWith(isSearchResult: true, isFilteredResult: false);
  }

  void clearFilter() {
    _pokemonListNotifier.clearFilter();
    state = state.copyWith(isFilteredResult: false, isSearchResult: false);
  }

  // Call domain apply filter & mark state
  void applyFilter({required PokemonGen? gen, required PokemonForm? form}) {
    _pokemonListNotifier.applyFilter(gen: gen, form: form);
    state = state.copyWith(isFilteredResult: true, isFilterVisible: false);
  }

  @override
  void dispose() {
    _connectivitySub.close();
    _pokeListSub.close();
    super.dispose();
  }
}

final pokemonListPageViewmodelProvider =
    StateNotifierProvider<PokemonListPageViewmodel, PokemonListPageState>((
      Ref ref,
    ) {
      return PokemonListPageViewmodel(ref: ref);
    });
