import 'package:pokedex_3d/data/models/pokemon3d_model/pokemon_3d.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_3d_hive_model.dart';

// Domain → Hive
extension Pokemon3dHiveMapper on Pokemon3dModel {
  Pokemon3dHive toHive() => Pokemon3dHive(
        id: id,
        forms: forms.map((f) => f.toHive()).toList(),
      );
}

extension PokemonFormHiveMapper on PokemonForm {
  PokemonFormHive toHive() => PokemonFormHive(
        name: name,
        model: model,
        formName: formName,
      );
}

// Hive → Domain
extension Pokemon3dHiveToDomain on Pokemon3dHive {
  Pokemon3dModel toDomain() => Pokemon3dModel(
        id: id,
        forms: forms.map((f) => f.toDomain()).toList(),
      );
}

extension PokemonFormHiveToDomain on PokemonFormHive {
  PokemonForm toDomain() => PokemonForm(
        name: name,
        model: model,
        formName: formName,
      );
}
