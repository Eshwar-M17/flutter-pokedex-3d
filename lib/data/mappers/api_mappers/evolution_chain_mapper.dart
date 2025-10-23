// evolution_chain_mapper.dart

import 'package:pokedex_3d/data/models/models/evolution_chain_model/evolution_chain_model.dart'
    show EvolutionDetail, PokemonSpecies, Species;
import 'package:pokedex_3d/data/services/remote/api_models/evolution_chain_model/evolution_chain_model.dart';

extension EvolutionChainMapper on EvolutionChainApiModel {
  Species toDomain() {
    return Species(speciesId: id, pokemonSpecies: chain.toDomain());
  }
}

extension ChainApiModelMapper on ChainApiModel {
  PokemonSpecies toDomain() {
    return PokemonSpecies(
      id: _extractIdFromUrl(species.url),
      name: species.name,
      isBaby: isBaby,
      evolutionDetails: evolutionDetails.map((e) => e.toDomain()).toList(),
      evolvesTo: evolvesTo.map((e) => e.toDomain()).toList(),
    );
  }
}

extension EvolutionDetailApiMapper on EvolutionDetailApi {
  EvolutionDetail toDomain() {
    return EvolutionDetail(
      gender: gender,
      trigger: trigger.name,
      minLevel: minLevel ?? 0, // default if null
    );
  }
}

/// Utility function to extract numeric ID from a URL
int _extractIdFromUrl(String url) {
  // Example: "https://pokeapi.co/api/v2/pokemon-species/25/"
  final segments = url.split('/');
  return int.tryParse(segments[segments.length - 2]) ?? 0;
}
