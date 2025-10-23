import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: unused_import
import 'package:http/http.dart';
import 'package:pokedex_3d/data/providers/pokemon_list_provider.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_form_tab.dart';
import 'package:pokedex_3d/ui/view/widgets/gradient_background.dart';
import 'package:pokedex_3d/ui/view/widgets/model_view_widget.dart';
import 'package:pokedex_3d/ui/view/widgets/pokemon_list_widget.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
