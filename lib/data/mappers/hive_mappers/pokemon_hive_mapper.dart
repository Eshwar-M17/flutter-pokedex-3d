import 'package:pokedex_3d/data/models/pokemon_detail/pokemon_detail.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_detail_hive_model.dart';

// Domain → Hive
extension PokemonHiveMapper on PokemonDetailsModel {
  PokemonDetailHive toHive() => PokemonDetailHive(
    baseExperience: baseExperience,
    height: height,
    weight: weight,
    id: id,
    name: name,
    stats: stats.map((s) => s.toHive()).toList(),
    types: types,
  );
}

extension StatHiveMapper on Stat {
  StatHive toHive() => StatHive(baseStat: baseStat, name: name, effort: effort);
}

// Hive → Domain
extension PokemonHiveToDomain on PokemonDetailHive {
  PokemonDetailsModel toDomain() => PokemonDetailsModel(
    baseExperience: baseExperience,
    height: height,
    weight: weight,
    id: id,
    name: name,
    stats: stats.map((s) => s.toDomain()).toList(),
    types: types,
  );
}

extension StatHiveToDomain on StatHive {
  Stat toDomain() => Stat(baseStat: baseStat, name: name, effort: effort);
}
