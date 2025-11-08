// core/network/api_constants.dart

/// Centralized constants for all API endpoints.
class ApiConstants {
  static const String baseUrl3d = 'https://pokemon-3d-api.onrender.com/v1';
  static const String baseUrlPokeProxy = 'https://pokeapi-proxy.freecodecamp.rocks/api';
  static const String baseUrlPokeApi = 'https://pokeapi.co/api/v2';

  // Pokémon list
  static String get pokemonList => '$baseUrl3d/pokemon';

  // Pokémon details
  static String pokemonDetails(int id) => '$baseUrlPokeProxy/pokemon/$id';

  // Pokémon species
  static String speciesDetails(int id) => '$baseUrlPokeApi/pokemon-species/$id';

  // Evolution chain
  static String evolutionChain(String url) => url;

  // 3D model file
  static String modelFile(String modelUrl) => modelUrl;
}
