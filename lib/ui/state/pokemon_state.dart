import 'dart:ui';
import 'package:pokedex_3d/core/utils/enums.dart';
import 'package:pokedex_3d/core/utils/icons_set.dart';
import 'package:pokedex_3d/data/models/evolution_chain_model.dart';
import 'package:pokedex_3d/data/models/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonDetailPageState {
  final int index;
  final Pokemon3dModel pokemon;
  final int currentForm;
  final AsyncValue<PokemonDetailsModel> pokemonInfo;
  final AsyncValue<List<List<PokemonChainNode>>> evolutionData;
  final List<Color>? dominantColorGradient;
  final AsyncValue<String> modelPath;
  final String? backgroundImg;
  const PokemonDetailPageState({
    required this.index,
    required this.pokemon,
    required this.currentForm,
    required this.pokemonInfo,
    required this.evolutionData,
    required this.modelPath,

    this.dominantColorGradient,
    this.backgroundImg,
  });

  factory PokemonDetailPageState.initial() {
    return PokemonDetailPageState(
      index: 0,
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

  PokemonDetailPageState copyWith({
    int? index,
    Pokemon3dModel? pokemon,
    int? currentForm,
    AsyncValue<PokemonDetailsModel>? pokemonInfo,
    AsyncValue<List<List<PokemonChainNode>>>? evolutionData,
    List<Color>? dominantColorGradient,
    String? backgroundImg,
    AsyncValue<String>? modelPath,
  }) {
    return PokemonDetailPageState(
      index: index ?? this.index,
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
