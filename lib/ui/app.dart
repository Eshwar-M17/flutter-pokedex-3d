import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_3d/ui/view/pages/pokemon_viewer_page.dart';

class Pokedex3D extends StatelessWidget {
  const Pokedex3D({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const PokemonViewerPage(),
    );
  }
}
