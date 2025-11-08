extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

// Add this extension for int
extension IntExtension on int {
  String toPokemonId() {
    return toString().padLeft(3, '0');
  }
}
