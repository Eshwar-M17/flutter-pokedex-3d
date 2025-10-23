import 'dart:convert';
import 'dart:typed_data';

// import 'package:pokedex_3d/data/models/pokemon_model.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:pokedex_3d/data/services/remote/api_models/evolution_chain_model/evolution_chain_model.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon3d_model/pokemon_3d_api_model.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon_api_model/pokemon_api_model.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon_species_api_model/pokemon_species_api_model.dart';

class ApiService {
  /// Fetch list of Pokémon
  ///
  final log = Logger();
  Future<List<Pokemon3dApiModel>> getPokemonList() async {
    final url = Uri.parse('https://pokemon-3d-api.onrender.com/v1/pokemon');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Failed to load pokemon list: ${response.reasonPhrase}');
    }

    final decoded = jsonDecode(response.body) as List;
    return decoded
        .map((e) => Pokemon3dApiModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Fetch details of a single Pokémon
  Future<PokemonModelApi> getPokemonDetails(int id) async {
    final uri = Uri.parse(
      'https://pokeapi-proxy.freecodecamp.rocks/api/pokemon/$id',
    );

    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to load pokemon details: ${response.reasonPhrase}',
      );
    }

    return PokemonModelApi.fromJson(jsonDecode(response.body));
  }

  /// Fetch Pokémon evolution chain
  Future<EvolutionChainApiModel> getPokemonEvolutionChain(int id) async {
    final speciesUri = Uri.parse(
      'https://pokeapi.co/api/v2/pokemon-species/$id',
    );
    log.i('getting species apiservice  detail for $id ');

    final speciesResponse = await http.get(speciesUri);

    if (speciesResponse.statusCode != 200) {
      throw Exception(
        'Failed to load species: ${speciesResponse.reasonPhrase}',
      );
    }

    final species = PokemonSpeciesApiModel.fromJson(
      jsonDecode(speciesResponse.body),
    );
    log.i(
      'getting evolution apiservice  detail for ${species.evolutionChain.url} ',
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

  /// Download 3D model file
  Future<Uint8List> getModelFile(String modelUrl) async {
    try {
      final response = await http.get(Uri.parse(modelUrl));
      if (response.statusCode == 200) {
        return response.bodyBytes;
      }
      throw Exception('Failed to download model: ${response.reasonPhrase}');
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
