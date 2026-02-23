// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonApiModel _$PokemonApiModelFromJson(Map<String, dynamic> json) =>
    _PokemonApiModel(
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

Map<String, dynamic> _$PokemonApiModelToJson(_PokemonApiModel instance) =>
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

_StatsDetailApiModel _$StatsDetailApiModelFromJson(Map<String, dynamic> json) =>
    _StatsDetailApiModel(
      baseStat: (json['base_stat'] as num).toInt(),
      effort: (json['effort'] as num).toInt(),
      stat: StatApiModel.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsDetailApiModelToJson(
  _StatsDetailApiModel instance,
) => <String, dynamic>{
  'base_stat': instance.baseStat,
  'effort': instance.effort,
  'stat': instance.stat,
};

_StatApiModel _$StatApiModelFromJson(Map<String, dynamic> json) =>
    _StatApiModel(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$StatApiModelToJson(_StatApiModel instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

_TypeDetailApiModel _$TypeDetailApiModelFromJson(Map<String, dynamic> json) =>
    _TypeDetailApiModel(
      slot: (json['slot'] as num).toInt(),
      type: TypeApiModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeDetailApiModelToJson(_TypeDetailApiModel instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};

_TypeApiModel _$TypeApiModelFromJson(Map<String, dynamic> json) =>
    _TypeApiModel(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$TypeApiModelToJson(_TypeApiModel instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};
