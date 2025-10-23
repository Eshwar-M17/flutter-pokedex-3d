import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_3d.freezed.dart';

@freezed
class Pokemon3dModel with _$Pokemon3dModel {
  factory Pokemon3dModel({
    required int id,
    required List<PokemonForm> forms, // Use FormApiModel here
  }) = _Pokemon3dApiModel;
}

@freezed
class PokemonForm with _$PokemonForm {
  factory PokemonForm({
    required String name,
    required String model,
    required String formName,
  }) = _PokemonForm;
}
