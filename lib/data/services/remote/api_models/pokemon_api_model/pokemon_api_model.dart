import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_api_model.freezed.dart';
part 'pokemon_api_model.g.dart';

@freezed
class PokemonDetailApiModel with _$PokemonDetailApiModel {
  factory PokemonDetailApiModel({
    @JsonKey(name: "base_experience") required int baseExperience,
    required int height,
    required int id,
    required String name,
    required int order,
    required Map<String, String> sprites,
    required List<StatsDetailApiModel> stats,
    required List<TypeDetailApiModel> types,
    required int weight,
  }) = _PokemonApiModel;

  factory PokemonDetailApiModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailApiModelFromJson(json);
}

@freezed
class StatsDetailApiModel with _$StatsDetailApiModel {
  factory StatsDetailApiModel({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    required StatApiModel stat,
  }) = _StatsDetailApiModel;

  factory StatsDetailApiModel.fromJson(Map<String, dynamic> json) =>
      _$StatsDetailApiModelFromJson(json);
}

@freezed
class StatApiModel with _$StatApiModel {
  factory StatApiModel({required String name, required String url}) =
      _StatApiModel;
  factory StatApiModel.fromJson(Map<String, dynamic> json) =>
      _$StatApiModelFromJson(json);
}

@freezed
class TypeDetailApiModel with _$TypeDetailApiModel {
  factory TypeDetailApiModel({required int slot, required TypeApiModel type}) =
      _TypeDetailApiModel;
  factory TypeDetailApiModel.fromJson(Map<String, dynamic> json) =>
      _$TypeDetailApiModelFromJson(json);
}

@freezed
class TypeApiModel with _$TypeApiModel {
  factory TypeApiModel({required String name, required String url}) =
      _TypeApiModel;

  factory TypeApiModel.fromJson(Map<String, dynamic> json) =>
      _$TypeApiModelFromJson(json);
}
