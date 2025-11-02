import 'package:flutter/material.dart';
import 'package:pokedex_3d/core/theme/theme.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/pokemon_list_page.dart';

class PokeDex3D extends StatelessWidget {
  const PokeDex3D({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      home: const PokemonListPage(),
    );
  }
}
