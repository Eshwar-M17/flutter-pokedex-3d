enum PokemonForm {
  alolan('Alolan'),
  fusion('Fusion'),

  galar('Galarian'),
  gmax('Gigantamax'),
  hisuian('Hisuian'),
  mega('Mega'),

  multiform('Multi Form'),
  multishinyform('Multi Shiny'),
  origin('Origin'),
  primal('Primal'),
  regular('Regular'),
  shiny('Shiny'),
  // shinyMega('Shiny Mega'), to shiny-Mega
  sxy('Mega X/Y'),
  unique('Unique'),
  xy('X/Y');

  final String label;

  const PokemonForm(this.label);
}

class AppConstants {
  static const String pokemonListboxKey = 'pokemon-list-box';
  static const String pokemonDetailBoxKey = 'pokemon-details-box';
  static const String pokemonEvolutionBoxKey = 'pokemon-evolution-box';
  static const String pokemonEvolutionSpeciesBoxKey =
      'pokemon-evolution-species-box';
  static const String pokemonViewedListboxKey = 'pokemon-viewed-list-box';

  static const List<String> pokemonFormsName = [
    "All Forms",
    "Regular",
    "Alolan",
    "Galarian",
    "Hisuian",
    "Mega",
    "G-Max",
    "Mega X/Y",
    "Unique",
    "Shiny",
    "Primal",
    "Origin",
    "Multi Form",
  ];
}

final Map pokemonGenRange = {
  1: {"first": 1, "last": 151},
  2: {"first": 152, "last": 251},
  3: {"first": 252, "last": 386},
  4: {"first": 387, "last": 493},
  5: {"first": 494, "last": 649},
  6: {"first": 650, "last": 721},
  7: {"first": 722, "last": 809},
  8: {"first": 810, "last": 905},
  9: {"first": 906, "last": 1025},
};
