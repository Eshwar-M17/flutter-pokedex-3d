import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_chain_model.freezed.dart';

@freezed
abstract class EvolutionDetail with _$EvolutionDetail {
  const factory EvolutionDetail({
    required int specieId,
    required PokemonSpecies pokemonSpecies,
  }) = _EvolutionDetail;
}

@freezed
abstract class PokemonSpecies with _$PokemonSpecies {
  const factory PokemonSpecies({
    required int id,
    required String name,
    required bool isBaby,
    required List<TriggerDetail> triggerDetails,
    required List<PokemonSpecies> evolvesTo,
  }) = _PokemonSpecies;
}

@freezed
abstract class TriggerDetail with _$TriggerDetail {
  const factory TriggerDetail({
    int? gender,
    required String trigger,
    required int minLevel,
  }) = _TriggerDetail;
}
