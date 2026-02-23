// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_3d_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pokemon3dApiModel _$Pokemon3dApiModelFromJson(Map<String, dynamic> json) =>
    _Pokemon3dApiModel(
      id: (json['id'] as num).toInt(),
      forms: (json['forms'] as List<dynamic>)
          .map((e) => FormApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Pokemon3dApiModelToJson(_Pokemon3dApiModel instance) =>
    <String, dynamic>{'id': instance.id, 'forms': instance.forms};

_FormApiModel _$FormApiModelFromJson(Map<String, dynamic> json) =>
    _FormApiModel(
      name: json['name'] as String,
      model: json['model'] as String,
      formName: json['formName'] as String,
    );

Map<String, dynamic> _$FormApiModelToJson(_FormApiModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'formName': instance.formName,
    };
