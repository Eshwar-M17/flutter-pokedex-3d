import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/theme/theme.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_list/pokemon_list_page.dart';
import 'package:pokedex_3d/ui/viewmodel/theme_notifier.dart';

class PokeDex3D extends ConsumerWidget {
  const PokeDex3D({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,

      themeMode: ref.watch(themeNotifier),
      darkTheme: AppTheme.darkTheme,
      home: const PokemonListPage(),
    );
  }
}
