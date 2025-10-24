import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:pokedex_3d/data/services/remote/api_models/pokemon3d_model/pokemon_3d_api_model.dart';

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
  Future<http.Response> getPokemonDetails(int id) async {
    final uri = Uri.parse(
      'https://pokeapi-proxy.freecodecamp.rocks/api/pokemon/$id',
    );
    return await http.get(uri);
  }

  Future<http.Response> getSpeciesDetails(int id) async {
    final speciesUri = Uri.parse(
      'https://pokeapi.co/api/v2/pokemon-species/$id',
    );
    log.i('getting species apiservice  detail for $id ');

    return await http.get(speciesUri);
  }

  /// Fetch Pokémon evolution chain
  Future<http.Response> getEvolutionDetails(String url) async {
    log.i('getting evolution apiservice  detail for ${url} ');

    return await http.get(Uri.parse(url));
  }

  /// Download 3D model file
  Future<http.Response> getModelFile(String modelUrl) async {
    return await http.get(Uri.parse(modelUrl));
  }
}
