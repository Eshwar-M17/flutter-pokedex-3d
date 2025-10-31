import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/constants.dart';
import 'package:pokedex_3d/core/result.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/repository/pokemon_model_list_repository.dart';

class Pokemon3dModelListNotifier
    extends StateNotifier<AsyncValue<List<Pokemon3dModel>>> {
  final log = Logger();
  late  List<Pokemon3dModel> _initialList;
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
        _initialList = response.value;

      case Error<List<Pokemon3dModel>>():
        state = AsyncValue.error(
          response.error.userMessage ?? response.error.message,
          StackTrace.current,
        );
    }
  }

  void searchPokemon(String value) {
    if (value.isEmpty) {
      return;
    }
    state = const AsyncValue.loading();
    String formattedStr = value.trim();
    int? id = int.tryParse(formattedStr);
    List<Pokemon3dModel> fromList = _initialList;
    if (id != null && id > 0 && id <= fromList.length) {
      state = AsyncValue.data([fromList[id - 1]]);
    } else {
      formattedStr = formattedStr.toLowerCase();
      state = AsyncValue.data(
        fromList
            .where(
              (pokemon) => pokemon.forms.any(
                (form) => form.name.toLowerCase().contains(formattedStr),
              ),
            )
            .toList(),
      );
    }
  }

  List<Pokemon3dModel> _filterGen({
    required int gen,
    required List<Pokemon3dModel> fromList,
  }) {
    return fromList.sublist(
      pokemonGenRange[gen]['first'] - 1,
      pokemonGenRange[gen]['last'],
    );
  }

  List<Pokemon3dModel> _filterForm({
    required String form,
    required List<Pokemon3dModel> fromList,
  }) {
    return fromList.where((pokemon) {
      return pokemon.forms.any((value) => value.formName == form);
    }).toList();
  }

  void clearFilter() {
    state = AsyncValue.data(_initialList);
  }

  void applyFilter({int? gen, String? form}) {
    List<Pokemon3dModel> filteredList = _initialList;
    state = const AsyncValue.loading();

    log.i(
      "initial filtered list length ${filteredList.length} and filterig for $gen $form",
    );
    if (gen != null && gen != 0) {
      log.i("filtering gen");

      filteredList = _filterGen(gen: gen, fromList: filteredList);
      log.i("filterd  gen with length ${filteredList.length}");
    }
    if (form != null && form != "all forms") {
      log.i('filtering form');
      filteredList = _filterForm(form: form, fromList: filteredList);
      log.i('filtered  form with length ${filteredList.length}');
    }
    state = AsyncValue.data(filteredList);
  }

  void getViewedPokemonList() async {
    log.d("getting viewed model list cache");
    state = const AsyncValue.loading();
    final response = await _pokemonModelListRepository.getViewedPokemonList();

    switch (response) {
      case Ok<List<Pokemon3dModel>>():
        state = AsyncValue.data(response.value);
        _initialList = response.value;
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
