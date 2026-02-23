import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail.freezed.dart';

@freezed
abstract class PokemonDetailsModel with _$PokemonDetailsModel {
  factory PokemonDetailsModel({
    required int baseExperience,
    required int height,
    required int weight,
    required int id,
    required String name,
    required List<Stat> stats,
    required List<String> types,
  }) = _PokemonDetailsModel;
}

@freezed
abstract class Stat with _$Stat {
  factory Stat({
    required int baseStat,
    required String name,
    required int effort,
  }) = _Stat;
}
