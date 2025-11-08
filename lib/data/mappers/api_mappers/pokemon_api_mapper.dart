import 'package:pokedex_3d/data/models/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon_api_model/pokemon_api_model.dart';

extension PokemonApiMapper on PokemonDetailApiModel {
  PokemonDetailsModel toDomain() => PokemonDetailsModel(
    baseExperience: baseExperience,
    height: height,
    weight: weight,
    id: id,
    name: name,
    stats: stats.map((e) => e.toDomain()).toList(),

    types: types.map((e) => e.type.name).toList(),
  );
}

extension StatsDetailApiMapper on StatsDetailApiModel {
  Stat toDomain() => Stat(baseStat: baseStat, name: stat.name, effort: effort);
}
