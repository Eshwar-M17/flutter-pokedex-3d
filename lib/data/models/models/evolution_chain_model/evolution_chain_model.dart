import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_chain_model.freezed.dart';

@freezed
class Species with _$Species {
  const factory Species({
    required int speciesId,
    required PokemonSpecies pokemonSpecies,
  }) = _Species;
}

@freezed
class PokemonSpecies with _$PokemonSpecies {
  const factory PokemonSpecies({
    required int id,
    required String name,
    required bool isBaby,
    required List<EvolutionDetail> evolutionDetails,
    required List<PokemonSpecies> evolvesTo,
  }) = _PokemonSpecies;
}

@freezed
class EvolutionDetail with _$EvolutionDetail {
  const factory EvolutionDetail({
    int? gender,
    required String trigger,
    required int minLevel,
  }) = _EvolutionDetailApi;
}
