import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon3d_model/pokemon_3d_api_model.dart';

extension Pokemon3dApiMapper on Pokemon3dApiModel {
  Pokemon3dModel toDomain() {
    return Pokemon3dModel(
      id: id,
      forms: forms.map((f) => f.toDomain()).toList(),
    );
  }
}

extension FormApiMapper on FormApiModel {
  PokemonForm toDomain() {
    return PokemonForm(name: name, model: model, formName: formName);
  }
}
