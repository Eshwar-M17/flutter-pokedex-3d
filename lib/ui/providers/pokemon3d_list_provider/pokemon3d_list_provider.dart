import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/core/result/result.dart' show Error, Ok, Result;
import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart'
    show Pokemon3dModel;
import 'package:pokedex_3d/data/providers/pokemon_model_list_provider.dart';
import 'package:pokedex_3d/ui/providers/connectivity_status_provider/connectivity_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon3d_list_provider.g.dart';

@riverpod
class Pokemon3DList extends _$Pokemon3DList {
  @override
  Future<List<Pokemon3dModel>> build() async {
    final repository = ref.read(pokemonModelListRepositoryProvider);

    final connectivity = await ref.watch(connectionStatusProvider.future);

    final response = switch (connectivity) {
      InternetStatus.connected => await repository.getMainPokemonList(),
      InternetStatus.disconnected => await repository.getViewedPokemonList(),
    };

    switch (response) {
      case Ok<List<Pokemon3dModel>>():
        return response.value;
      case Error<List<Pokemon3dModel>>():
        throw response.error;
    }
  }
}
