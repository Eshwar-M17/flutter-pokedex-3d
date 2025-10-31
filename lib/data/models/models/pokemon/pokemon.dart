import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';

@freezed
class PokemonDetailsModel with _$PokemonModel {
  factory PokemonDetailsModel({
    required int baseExperience,
    required int height,
    required int weight,
    required int id,
    required String name,
    required List<Stat> stats,
    required List<String> types,
  }) = _PokemonModel;
}

@freezed
class Stat with _$Stat {
  factory Stat({
    required int baseStat,
    required String name,
    required int effort,
  }) = _Stat;
}
