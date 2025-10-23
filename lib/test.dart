// ignore_for_file: unused_import

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex_3d/data/mappers/api_mappers/evolution_chain_mapper.dart';
import 'package:pokedex_3d/data/services/remote/api_models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon3d_model/pokemon_3d_api_model.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon_api_model/pokemon_api_model.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon_species_api_model/pokemon_species_api_model.dart';

void main() async {
  try {
    final res = await getPokemonEvolutionChain(1);
  } catch (e) {
  }
}

Future<List<Pokemon3dApiModel>> getPokemonList() async {
  final url = Uri.parse('https://pokemon-3d-api.onrender.com/v1/pokemon');
  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw Exception('Failed to load pokemon list: ${response.reasonPhrase}');
  }

  final decoded = jsonDecode(response.body) as List;
  return decoded.map((e) => Pokemon3dApiModel.fromJson(e)).toList();
}

/// Fetch details of a single Pokémon
Future<PokemonModelApi> getPokemonDetails(int id) async {
  final uri = Uri.parse(
    'https://pokeapi-proxy.freecodecamp.rocks/api/pokemon/$id',
  );

  final response = await http.get(uri);

  if (response.statusCode != 200) {
    throw Exception('Failed to load pokemon details: ${response.reasonPhrase}');
  }

  return PokemonModelApi.fromJson(jsonDecode(response.body));
}

/// Fetch Pokémon evolution chain
Future<EvolutionChainApiModel> getPokemonEvolutionChain(int id) async {
  final speciesUri = Uri.parse('https://pokeapi.co/api/v2/pokemon-species/$id');

  final speciesResponse = await http.get(speciesUri);

  if (speciesResponse.statusCode != 200) {
    throw Exception('Failed to load species: ${speciesResponse.reasonPhrase}');
  }

  final species = PokemonSpeciesApiModel.fromJson(
    jsonDecode(speciesResponse.body),
  );

  final evolutionResponse = await http.get(
    Uri.parse(species.evolutionChain.url),
  );

  if (evolutionResponse.statusCode != 200) {
    throw Exception(
      'Failed to load evolution chain: ${evolutionResponse.reasonPhrase}',
    );
  }

  return EvolutionChainApiModel.fromJson(jsonDecode(evolutionResponse.body));
}

//   /// Download 3D model file
//   Future<Uint8List> getModelFile(String modelUrl) async {
//     try {
//       final response = await http.get(Uri.parse(modelUrl));
//       if (response.statusCode == 200) {
//         return response.bodyBytes;
//       }
//       throw Exception('Failed to download model: ${response.reasonPhrase}');
//     } catch (e) {
//       throw Exception(e.toString());
//     }
//   }
// }
