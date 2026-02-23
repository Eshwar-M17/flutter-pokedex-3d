import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_3d_api_model.freezed.dart';
part 'pokemon_3d_api_model.g.dart';

@freezed
abstract class Pokemon3dApiModel with _$Pokemon3dApiModel {
  factory Pokemon3dApiModel({
    required int id,
    required List<FormApiModel> forms, // Use FormApiModel here
  }) = _Pokemon3dApiModel;

  factory Pokemon3dApiModel.fromJson(Map<String, dynamic> json) =>
      _$Pokemon3dApiModelFromJson(json);
}

@freezed
abstract class FormApiModel with _$FormApiModel {
  factory FormApiModel({
    required String name,
    required String model,
    required String formName,
  }) = _FormApiModel;

  factory FormApiModel.fromJson(Map<String, dynamic> json) =>
      _$FormApiModelFromJson(json);
}
