// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EvolutionChainRefApiModelImpl _$$EvolutionChainRefApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EvolutionChainRefApiModelImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$EvolutionChainRefApiModelImplToJson(
        _$EvolutionChainRefApiModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$PokemonSpeciesApiModelImpl _$$PokemonSpeciesApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpeciesApiModelImpl(
      evolutionChain: EvolutionChainRefApiModel.fromJson(
          json['evolution_chain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonSpeciesApiModelImplToJson(
        _$PokemonSpeciesApiModelImpl instance) =>
    <String, dynamic>{
      'evolution_chain': instance.evolutionChain,
    };
