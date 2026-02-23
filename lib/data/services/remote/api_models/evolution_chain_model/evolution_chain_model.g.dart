// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EvolutionChain _$EvolutionChainFromJson(Map<String, dynamic> json) =>
    _EvolutionChain(
      babyTriggerItem: json['baby_trigger_item'],
      chain: ChainApiModel.fromJson(json['chain'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$EvolutionChainToJson(_EvolutionChain instance) =>
    <String, dynamic>{
      'baby_trigger_item': instance.babyTriggerItem,
      'chain': instance.chain,
      'id': instance.id,
    };

_ChainApiModel _$ChainApiModelFromJson(Map<String, dynamic> json) =>
    _ChainApiModel(
      evolutionDetails: (json['evolution_details'] as List<dynamic>)
          .map((e) => EvolutionDetailApi.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolvesTo: (json['evolves_to'] as List<dynamic>)
          .map((e) => ChainApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isBaby: json['is_baby'] as bool,
      species: SpeciesApiModel.fromJson(
        json['species'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ChainApiModelToJson(_ChainApiModel instance) =>
    <String, dynamic>{
      'evolution_details': instance.evolutionDetails,
      'evolves_to': instance.evolvesTo,
      'is_baby': instance.isBaby,
      'species': instance.species,
    };

_EvolutionDetailApi _$EvolutionDetailApiFromJson(Map<String, dynamic> json) =>
    _EvolutionDetailApi(
      gender: (json['gender'] as num?)?.toInt(),
      heldItem: json['heldItem'],
      item: json['item'],
      knownMove: json['knownMove'],
      knownMoveType: json['knownMoveType'],
      location: json['location'],
      minAffection: (json['min_affection'] as num?)?.toInt(),
      minBeauty: (json['min_beauty'] as num?)?.toInt(),
      minHappiness: (json['min_happiness'] as num?)?.toInt(),
      minLevel: (json['min_level'] as num?)?.toInt(),
      needsOverworldRain: json['needs_overworld_rain'] as bool,
      partySpecies: json['partySpecies'],
      partyType: json['partyType'],
      relativePhysicalStats: json['relative_physical_stats'],
      timeOfDay: json['time_of_day'] as String,
      tradeSpecies: json['tradeSpecies'],
      trigger: TriggerApiModel.fromJson(
        json['trigger'] as Map<String, dynamic>,
      ),
      turnUpsideDown: json['turn_upside_down'] as bool,
    );

Map<String, dynamic> _$EvolutionDetailApiToJson(_EvolutionDetailApi instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'heldItem': instance.heldItem,
      'item': instance.item,
      'knownMove': instance.knownMove,
      'knownMoveType': instance.knownMoveType,
      'location': instance.location,
      'min_affection': instance.minAffection,
      'min_beauty': instance.minBeauty,
      'min_happiness': instance.minHappiness,
      'min_level': instance.minLevel,
      'needs_overworld_rain': instance.needsOverworldRain,
      'partySpecies': instance.partySpecies,
      'partyType': instance.partyType,
      'relative_physical_stats': instance.relativePhysicalStats,
      'time_of_day': instance.timeOfDay,
      'tradeSpecies': instance.tradeSpecies,
      'trigger': instance.trigger,
      'turn_upside_down': instance.turnUpsideDown,
    };

_SpeciesApiModel _$SpeciesApiModelFromJson(Map<String, dynamic> json) =>
    _SpeciesApiModel(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$SpeciesApiModelToJson(_SpeciesApiModel instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

_TriggerApiModel _$TriggerApiModelFromJson(Map<String, dynamic> json) =>
    _TriggerApiModel(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$TriggerApiModelToJson(_TriggerApiModel instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
