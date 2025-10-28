import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/providers/pokemon_model_list_provider.dart';
import 'package:pokedex_3d/ui/providers/connectivity_notifier.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_model_list_notifier.dart';

final pokemon3dModelListNotifierProider =
    StateNotifierProvider<
      Pokemon3dModelListNotifier,
      AsyncValue<List<Pokemon3dModel>>
    >((ref) {
      final notifier = Pokemon3dModelListNotifier(
        pokemonModelListRepository: ref.read(
          pokemonModelListRepositoryProvider,
        ),
        connection: ref.read(connectivityStatusProvider),
      );
      ref.listen(connectivityStatusProvider, (prev, next) {
        next.whenData((status) {
          switch (status) {
            case InternetStatus.connected:
              notifier.getMainPokemonList();
            case InternetStatus.disconnected:
              notifier.getViewedPokemonList();
          }
        });
      });
      return notifier;
    });
