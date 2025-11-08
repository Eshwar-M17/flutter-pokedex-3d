import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/core/utils/enums.dart';
import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart'
    hide PokemonForm;
import 'package:pokedex_3d/ui/providers/connectivity_notifier.dart';
import 'package:pokedex_3d/ui/providers/pokemon_3d_model_list_notifier.dart';
import 'package:pokedex_3d/ui/state/pokemon_list_page_state.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_3d_model_list_notifier.dart';

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
    state = state.copyWith(isFilteredResult: true);
  }
void refresh() {
  state = state.copyWith();
  
  if (state.isOffline) {
    // Offline: can't refresh, just reload viewed list
    _pokemonListNotifier.getViewedPokemonList();
  } else {
    // Online: force bypass cache for main list
    _pokemonListNotifier.getMainPokemonList(forceRefresh: true);
  }
  
  state = state.copyWith(isFilteredResult: false, isSearchResult: false);
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
