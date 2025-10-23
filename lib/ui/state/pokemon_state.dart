import 'dart:ui';
import 'package:pokedex_3d/core/icons_set.dart';
import 'package:pokedex_3d/data/models/evolution_chain_model.dart';
import 'package:pokedex_3d/data/models/models/pokemon/pokemon.dart';
import 'package:pokedex_3d/data/models/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/models/pokemon_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonPageState {
  final Pokemon3dModel pokemon;
  final int currentForm;
  final AsyncValue<PokemonModel> pokemonInfo;
  final AsyncValue<List<List<PokemonChainNode>>> evolutionData;
  final List<Color>? dominantColorGradient;
  final AsyncValue<String> modelPath;
  final String? backgroundImg;
  const PokemonPageState({
    required this.pokemon,
    required this.currentForm,
    required this.pokemonInfo,
    required this.evolutionData,
    required this.modelPath,

    this.dominantColorGradient,
    this.backgroundImg,
  });

  factory PokemonPageState.initial() {
    return PokemonPageState(
      pokemon: Pokemon3dModel(id: 0, forms: []),
      currentForm: 0,
      pokemonInfo: const AsyncValue.loading(),
      evolutionData: const AsyncValue.loading(),
      modelPath: const AsyncValue.loading(),
      dominantColorGradient: [
        PokemonType.grass.color,
        PokemonType.grass.color.withAlpha(100),
      ],
      backgroundImg: PokemonTypeIcons.grassBg,
    );
  }

  PokemonPageState copyWith({
    Pokemon3dModel? pokemon,
    int? currentForm,
    AsyncValue<PokemonModel>? pokemonInfo,
    AsyncValue<List<List<PokemonChainNode>>>? evolutionData,
    List<Color>? dominantColorGradient,
    String? backgroundImg,
    AsyncValue<String>? modelPath,
  }) {
    return PokemonPageState(
      pokemon: pokemon ?? this.pokemon,
      currentForm: currentForm ?? this.currentForm,
      pokemonInfo: pokemonInfo ?? this.pokemonInfo,
      evolutionData: evolutionData ?? this.evolutionData,
      dominantColorGradient:
          dominantColorGradient ?? this.dominantColorGradient,
      backgroundImg: backgroundImg ?? this.backgroundImg,
      modelPath: modelPath ?? this.modelPath,
    );
  }
}
