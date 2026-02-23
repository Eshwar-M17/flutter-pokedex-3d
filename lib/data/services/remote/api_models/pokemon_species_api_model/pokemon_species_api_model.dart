import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species_api_model.freezed.dart';
part 'pokemon_species_api_model.g.dart';

@freezed
abstract class EvolutionChainRefApiModel with _$EvolutionChainRefApiModel {
  factory EvolutionChainRefApiModel({
    required String url,
  }) = _EvolutionChainRefApiModel;

  factory EvolutionChainRefApiModel.fromJson(Map<String, dynamic> json) =>
      _$EvolutionChainRefApiModelFromJson(json);
}

@freezed
abstract class PokemonSpeciesApiModel with _$PokemonSpeciesApiModel {
  factory PokemonSpeciesApiModel({
    @JsonKey(name: 'evolution_chain')
    required EvolutionChainRefApiModel evolutionChain,
  }) = _PokemonSpeciesApiModel;

  factory PokemonSpeciesApiModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesApiModelFromJson(json);
}
