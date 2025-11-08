import 'package:logger/logger.dart';
import 'package:pokedex_3d/core/constants/api_constants.dart';
import 'package:pokedex_3d/core/network/network_client.dart';
import 'package:pokedex_3d/core/network/network_response.dart';

/// Handles all remote API communication related to Pokémon data.
class ApiService {
  final NetworkClient client;
  final log = Logger();

  ApiService({required this.client});

  /// Fetch list of Pokémon (3D version)
  Future<NetworkResponse> getPokemonList({String? eTag}) async {
    final uri = Uri.parse(ApiConstants.pokemonList);

    final headers = <String, String>{};
    if (eTag != null) {
      headers.addAll({"If-None-Match": eTag, "Cache-Control": "max-age=0"});
    }

    log.i('Fetching Pokémon list → $uri');
    return client.get(uri: uri, headers: headers.isNotEmpty ? headers : null);
  }

  /// Fetch details of a single Pokémon (standard PokéAPI)
  Future<NetworkResponse> getPokemonDetails(int id) async {
    final uri = Uri.parse(ApiConstants.pokemonDetails(id));
    log.i('Fetching Pokémon details → $uri');
    return client.get(uri: uri);
  }

  /// Fetch species details for a Pokémon
  Future<NetworkResponse> getSpeciesDetails(int id) async {
    final uri = Uri.parse(ApiConstants.speciesDetails(id));
    log.i('Fetching species details → $uri');
    return client.get(uri: uri);
  }

  /// Fetch Pokémon evolution chain details
  Future<NetworkResponse> getEvolutionDetails(String url) async {
    final uri = Uri.parse(ApiConstants.evolutionChain(url));
    log.i('Fetching evolution chain → $uri');
    return client.get(uri: uri);
  }

  /// Fetch 3D model file (used for rendering Pokémon)
  Future<NetworkResponse> getModelFile(String modelUrl) async {
    final uri = Uri.parse(ApiConstants.modelFile(modelUrl));
    log.i('Fetching 3D model → $uri');
    return client.get(uri: uri);
  }
}
