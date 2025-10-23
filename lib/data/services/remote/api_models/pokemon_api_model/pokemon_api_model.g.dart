// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonApiModelImpl _$$PokemonApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonApiModelImpl(
      baseExperience: (json['base_experience'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      order: (json['order'] as num).toInt(),
      sprites: Map<String, String>.from(json['sprites'] as Map),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => StatsDetailApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => TypeDetailApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num).toInt(),
    );

Map<String, dynamic> _$$PokemonApiModelImplToJson(
        _$PokemonApiModelImpl instance) =>
    <String, dynamic>{
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

_$StatsDetailApiModelImpl _$$StatsDetailApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StatsDetailApiModelImpl(
      baseStat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: StatApiModel.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatsDetailApiModelImplToJson(
        _$StatsDetailApiModelImpl instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

_$StatApiModelImpl _$$StatApiModelImplFromJson(Map<String, dynamic> json) =>
    _$StatApiModelImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$StatApiModelImplToJson(_$StatApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$TypeDetailApiModelImpl _$$TypeDetailApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TypeDetailApiModelImpl(
      slot: (json['slot'] as num).toInt(),
      type: TypeApiModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeDetailApiModelImplToJson(
        _$TypeDetailApiModelImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$TypeApiModelImpl _$$TypeApiModelImplFromJson(Map<String, dynamic> json) =>
    _$TypeApiModelImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$TypeApiModelImplToJson(_$TypeApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
