// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_3d_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Pokemon3dApiModelImpl _$$Pokemon3dApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$Pokemon3dApiModelImpl(
      id: (json['id'] as num).toInt(),
      forms: (json['forms'] as List<dynamic>)
          .map((e) => FormApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$Pokemon3dApiModelImplToJson(
        _$Pokemon3dApiModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'forms': instance.forms,
    };

_$FormApiModelImpl _$$FormApiModelImplFromJson(Map<String, dynamic> json) =>
    _$FormApiModelImpl(
      name: json['name'] as String,
      model: json['model'] as String,
      formName: json['formName'] as String,
    );

Map<String, dynamic> _$$FormApiModelImplToJson(_$FormApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'model': instance.model,
      'formName': instance.formName,
    };
