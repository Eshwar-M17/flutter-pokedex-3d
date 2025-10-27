import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/core/error_widget/error_widget.dart';
import 'package:pokedex_3d/ui/providers/pokemon_model_list_notifier_provider.dart';
import 'package:pokedex_3d/ui/view/widgets/empty_collection_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_form_tab.dart';
import 'package:pokedex_3d/ui/view/widgets/gradient_background.dart';
import 'package:pokedex_3d/ui/view/widgets/model_view_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_list_widget.dart';

class PokemonViewerPage extends ConsumerStatefulWidget {
  const PokemonViewerPage({super.key});

  @override
  ConsumerState<PokemonViewerPage> createState() => _PokemonViewerPage();
}

class _PokemonViewerPage extends ConsumerState<PokemonViewerPage> {
  late final StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      subscription = InternetConnection().onStatusChange.listen((
        InternetStatus status,
      ) {
        switch (status) {
          case InternetStatus.connected:
            ref
                .read(pokemonModelListNotifierProvider.notifier)
                .getMainPokemonList();
          case InternetStatus.disconnected:
            showDialog(
              context: context,
              builder: (context) {
                if (context.mounted) {
                  return AlertDialog(
                    title: const Text('Offline Mode'),
                    content: const Text(
                      'No internet connection detected. Showing cached Pokémon.',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                }
                return const Text("");
              },
            );
            ref
                .read(pokemonModelListNotifierProvider.notifier)
                .getViewedPokemonList();
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final pokeList = ref.watch(pokemonModelListNotifierProvider);

    return SafeArea(
      child: Scaffold(
        body: pokeList.when(
          data: (data) {
            if (data.isEmpty) {
              return const EmptyCollectionWidget();
            }
            return const GradientBackground(
              child: Column(
                children: [
                  PokemonFormTab(),
                  Expanded(child: ModelViewWidget()),
                  SizedBox(height: 80, child: PokemonListWidget()),
                ],
              ),
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
          error: (e, st) {
            return CustomErrorWidget(errorMessage: e.toString());
          },
        ),
      ),
    );
  }
}
