import 'package:pokedex_3d/data/models/models/pokemon/pokemon.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_hive_model.dart';

// Domain → Hive
extension PokemonHiveMapper on PokemonModel {
  PokemonHive toHive() => PokemonHive(
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
  StatHive toHive() => StatHive(
        baseStat: baseStat,
        name: name,
        effort: effort,
      );
}

// Hive → Domain
extension PokemonHiveToDomain on PokemonHive {
  PokemonModel toDomain() => PokemonModel(
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
  Stat toDomain() => Stat(
        baseStat: baseStat,
        name: name,
        effort: effort,
      );
}
