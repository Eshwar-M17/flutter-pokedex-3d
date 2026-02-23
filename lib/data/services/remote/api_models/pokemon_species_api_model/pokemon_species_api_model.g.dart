// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EvolutionChainRefApiModel _$EvolutionChainRefApiModelFromJson(
  Map<String, dynamic> json,
) => _EvolutionChainRefApiModel(url: json['url'] as String);

Map<String, dynamic> _$EvolutionChainRefApiModelToJson(
  _EvolutionChainRefApiModel instance,
) => <String, dynamic>{'url': instance.url};

_PokemonSpeciesApiModel _$PokemonSpeciesApiModelFromJson(
  Map<String, dynamic> json,
) => _PokemonSpeciesApiModel(
  evolutionChain: EvolutionChainRefApiModel.fromJson(
    json['evolution_chain'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PokemonSpeciesApiModelToJson(
  _PokemonSpeciesApiModel instance,
) => <String, dynamic>{'evolution_chain': instance.evolutionChain};
