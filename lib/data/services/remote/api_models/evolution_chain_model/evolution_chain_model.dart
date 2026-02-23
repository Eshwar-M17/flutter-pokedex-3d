import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_chain_model.freezed.dart';
part 'evolution_chain_model.g.dart';

@freezed
abstract class EvolutionChainApiModel with _$EvolutionChainApiModel {
  const factory EvolutionChainApiModel({
    @JsonKey(name: 'baby_trigger_item') dynamic babyTriggerItem,
    required ChainApiModel chain,
    required int id,
  }) = _EvolutionChain;

  factory EvolutionChainApiModel.fromJson(Map<String, dynamic> json) =>
      _$EvolutionChainApiModelFromJson(json);
}

@freezed
abstract class ChainApiModel with _$ChainApiModel {
  const factory ChainApiModel({
    @JsonKey(name: 'evolution_details')
    required List<EvolutionDetailApi> evolutionDetails,
    @JsonKey(name: 'evolves_to') required List<ChainApiModel> evolvesTo,
    @JsonKey(name: 'is_baby') required bool isBaby,
    required SpeciesApiModel species,
  }) = _ChainApiModel;

  factory ChainApiModel.fromJson(Map<String, dynamic> json) => _$ChainApiModelFromJson(json);
}

@freezed
abstract class EvolutionDetailApi with _$EvolutionDetailApi {
  const factory EvolutionDetailApi({
    int? gender,
    dynamic heldItem,
    dynamic item,
    dynamic knownMove,
    dynamic knownMoveType,
    dynamic location,
    @JsonKey(name: 'min_affection') int? minAffection,
    @JsonKey(name: 'min_beauty') int? minBeauty,
    @JsonKey(name: 'min_happiness') int? minHappiness,
    @JsonKey(name: 'min_level') int? minLevel,
    @JsonKey(name: 'needs_overworld_rain') required bool needsOverworldRain,
    dynamic partySpecies,
    dynamic partyType,
    @JsonKey(name: 'relative_physical_stats') dynamic relativePhysicalStats,
    @JsonKey(name: 'time_of_day') required String timeOfDay,
    dynamic tradeSpecies,
    required TriggerApiModel trigger,
    @JsonKey(name: 'turn_upside_down') required bool turnUpsideDown,
  }) = _EvolutionDetailApi;

  factory EvolutionDetailApi.fromJson(Map<String, dynamic> json) =>
      _$EvolutionDetailApiFromJson(json);
}

@freezed
abstract class SpeciesApiModel with _$SpeciesApiModel {
  const factory SpeciesApiModel({required String name, required String url}) =
      _SpeciesApiModel;

  factory SpeciesApiModel.fromJson(Map<String, dynamic> json) =>
      _$SpeciesApiModelFromJson(json);
}

@freezed
abstract class TriggerApiModel with _$TriggerApiModel {
  const factory TriggerApiModel({required String name, required String url}) =
      _TriggerApiModel;

  factory TriggerApiModel.fromJson(Map<String, dynamic> json) =>
      _$TriggerApiModelFromJson(json);
}
