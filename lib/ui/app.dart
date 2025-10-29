import 'package:flutter/material.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list_page.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_viewer_page.dart';

class PokeDex3D extends StatelessWidget {
  const PokeDex3D({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto', useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const PokemonListPage(),
    );
  }
}
