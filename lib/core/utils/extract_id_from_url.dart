// evolution_chain_mapper.dart

/// Utility function to extract numeric ID from a URL
int extractIdFromUrl(String url) {
  // Example: "https://pokeapi.co/api/v2/pokemon-species/25/"
  final segments = url.split('/');
  return int.tryParse(segments[segments.length - 2]) ?? 0;
}
