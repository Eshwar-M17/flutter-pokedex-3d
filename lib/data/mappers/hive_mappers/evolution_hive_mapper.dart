import 'package:pokedex_3d/data/models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_detail_hive_model.dart';

extension EvolutionDetailHiveMapper on EvolutionDetail {
  EvolutionDetailHive toHive() => EvolutionDetailHive(
    speciesId: specieId,
    pokemonSpeciesHive: pokemonSpecies.toHive(),
  );
}

// Domain → Hive
extension PokemonSpeciesHiveMapper on PokemonSpecies {
  PokemonSpeciesHive toHive() => PokemonSpeciesHive(
    id: id,
    name: name,
    isBaby: isBaby,
    triggerDetails: triggerDetails.map((e) => e.toHive()).toList(),
    evolvesTo: evolvesTo.map((e) => e.toHive()).toList(),
  );
}

extension TriggerDetailHiveMapper on TriggerDetail {
  TriggerDetailHive toHive() =>
      TriggerDetailHive(gender: gender, trigger: trigger, minLevel: minLevel);
}

extension EvolutionDetailHiveToDomain on EvolutionDetailHive {
  EvolutionDetail toDomain() => EvolutionDetail(
    specieId: speciesId,
    pokemonSpecies: pokemonSpeciesHive.toDomain(),
  );
}

// Hive → Domain
extension PokemonSpeciesHiveToDomain on PokemonSpeciesHive {
  PokemonSpecies toDomain() => PokemonSpecies(
    id: id,
    name: name,
    isBaby: isBaby,
    evolvesTo: evolvesTo.map((e) => e.toDomain()).toList(),
    triggerDetails: triggerDetails.map((e) => e.toDomain()).toList(),
  );
}

extension TriggerDetailHiveToDomain on TriggerDetailHive {
  TriggerDetail toDomain() =>
      TriggerDetail(gender: gender, trigger: trigger, minLevel: minLevel);
}
