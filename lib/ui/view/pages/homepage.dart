import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: unused_import
import 'package:http/http.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/data/providers/pokemon_list_provider.dart';
import 'package:pokedex_3d/ui/providers/pokemon_model_list_notifier_provider.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_form_tab.dart';
import 'package:pokedex_3d/ui/view/widgets/gradient_background.dart';
import 'package:pokedex_3d/ui/view/widgets/model_view_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_list_widget.dart';
import 'package:pokedex_3d/ui/viewmodel/pokemon_model_list_notifier.dart';

class Homepage extends ConsumerStatefulWidget {
  const Homepage({super.key});

  @override
  ConsumerState<Homepage> createState() => _HomepageState();
}

class _HomepageState extends ConsumerState<Homepage> {
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
  }

  @override
  Widget build(BuildContext context) {
    final pokemonModelListNotifier = ref.watch(
      pokemonModelListNotifierProvider.notifier,
    );

    final pokeList = ref.watch(pokemonListProvider);

    return SafeArea(
      child: Scaffold(
        body: pokeList.when(
          data: (data) {
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
            return Center(child: Text(e.toString()));
          },
        ),
      ),
    );
  }
}
