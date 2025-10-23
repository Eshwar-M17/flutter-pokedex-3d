// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvolutionChainImpl _$$EvolutionChainImplFromJson(Map<String, dynamic> json) =>
    _$EvolutionChainImpl(
      babyTriggerItem: json['baby_trigger_item'],
      chain: ChainApiModel.fromJson(json['chain'] as Map<String, dynamic>),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$$EvolutionChainImplToJson(
        _$EvolutionChainImpl instance) =>
    <String, dynamic>{
      'baby_trigger_item': instance.babyTriggerItem,
      'chain': instance.chain,
      'id': instance.id,
    };

_$ChainApiModelImpl _$$ChainApiModelImplFromJson(Map<String, dynamic> json) =>
    _$ChainApiModelImpl(
      evolutionDetails: (json['evolution_details'] as List<dynamic>)
          .map((e) => EvolutionDetailApi.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolvesTo: (json['evolves_to'] as List<dynamic>)
          .map((e) => ChainApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isBaby: json['is_baby'] as bool,
      species:
          SpeciesApiModel.fromJson(json['species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChainApiModelImplToJson(_$ChainApiModelImpl instance) =>
    <String, dynamic>{
      'evolution_details': instance.evolutionDetails,
      'evolves_to': instance.evolvesTo,
      'is_baby': instance.isBaby,
      'species': instance.species,
    };

_$EvolutionDetailApiImpl _$$EvolutionDetailApiImplFromJson(
        Map<String, dynamic> json) =>
    _$EvolutionDetailApiImpl(
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
      trigger:
          TriggerApiModel.fromJson(json['trigger'] as Map<String, dynamic>),
      turnUpsideDown: json['turn_upside_down'] as bool,
    );

Map<String, dynamic> _$$EvolutionDetailApiImplToJson(
        _$EvolutionDetailApiImpl instance) =>
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

_$SpeciesApiModelImpl _$$SpeciesApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpeciesApiModelImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$SpeciesApiModelImplToJson(
        _$SpeciesApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$TriggerApiModelImpl _$$TriggerApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TriggerApiModelImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$TriggerApiModelImplToJson(
        _$TriggerApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
