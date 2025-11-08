// evolution_chain_mapper.dart

import 'package:pokedex_3d/core/utils/extract_id_from_url.dart';
import 'package:pokedex_3d/data/models/evolution_chain_model/evolution_chain_model.dart'
    show EvolutionDetail, PokemonSpecies, TriggerDetail;
import 'package:pokedex_3d/data/services/remote/api_models/evolution_chain_model/evolution_chain_model.dart';

extension EvolutionChainMapper on EvolutionChainApiModel {
  EvolutionDetail toDomain() {
    return EvolutionDetail(specieId: id, pokemonSpecies: chain.toDomain());
  }
}

extension ChainApiModelMapper on ChainApiModel {
  PokemonSpecies toDomain() {
    return PokemonSpecies(
      id: extractIdFromUrl(species.url),
      name: species.name,
      isBaby: isBaby,
      triggerDetails: evolutionDetails.map((e) => e.toDomain()).toList(),
      evolvesTo: evolvesTo.map((e) => e.toDomain()).toList(),
    );
  }
}

extension EvolutionDetailApiMapper on EvolutionDetailApi {
  TriggerDetail toDomain() {
    return TriggerDetail(
      gender: gender,
      trigger: trigger.name,
      minLevel: minLevel ?? 0, // default if null
    );
  }
}
