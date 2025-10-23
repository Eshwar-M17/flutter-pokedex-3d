import 'package:pokedex_3d/data/models/models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_hive_model.dart';

extension SpeciesHiveMapper on Species {
  SpeciesHive toHive() => SpeciesHive(
    speciesId: speciesId,
    pokemonSpeciesHive: pokemonSpecies.toHive(),
  );
}

// Domain → Hive
extension PokemonSpeciesHiveMapper on PokemonSpecies {
  PokemonSpeciesHive toHive() => PokemonSpeciesHive(
    id: id,
    name: name,
    isBaby: isBaby,
    evolutionDetails: evolutionDetails.map((e) => e.toHive()).toList(),
    evolvesTo: evolvesTo.map((e) => e.toHive()).toList(),
  );
}

extension EvolutionDetailHiveMapper on EvolutionDetail {
  EvolutionDetailHive toHive() =>
      EvolutionDetailHive(gender: gender, trigger: trigger, minLevel: minLevel);
}

extension SpeciesHiveToDomain on SpeciesHive {
  Species toDomain() => Species(
    speciesId: speciesId,
    pokemonSpecies: pokemonSpeciesHive.toDomain(),
  );
}

// Hive → Domain
extension PokemonSpeciesHiveToDomain on PokemonSpeciesHive {
  PokemonSpecies toDomain() => PokemonSpecies(
    id: id,
    name: name,
    isBaby: isBaby,
    evolutionDetails: evolutionDetails.map((e) => e.toDomain()).toList(),
    evolvesTo: evolvesTo.map((e) => e.toDomain()).toList(),
  );
}

extension EvolutionDetailHiveToDomain on EvolutionDetailHive {
  EvolutionDetail toDomain() =>
      EvolutionDetail(gender: gender, trigger: trigger, minLevel: minLevel);
}
