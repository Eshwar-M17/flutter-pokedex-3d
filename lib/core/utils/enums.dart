import 'dart:ui';

import 'package:pokedex_3d/core/utils/icons_set.dart';
import 'package:pokedex_3d/core/theme/app_colors.dart';

enum PokemonGen {
  gen0(0, 0, 0),
  gen1(1, 151, 1),
  gen2(152, 251, 2),
  gen3(252, 386, 3),
  gen4(387, 493, 4),
  gen5(494, 649, 5),
  gen6(650, 721, 6),
  gen7(722, 809, 7),
  gen8(810, 905, 8),
  gen9(906, 1025, 9);

  final int startId;
  final int endId;
  final int number;

  const PokemonGen(this.startId, this.endId, this.number);

  /// Computed label (not a stored member)
  String get label => number == 0 ? 'All Gen' : 'Gen $number';

  /// Returns range as a map if you ever need it
  Map<String, int> get range => {'first': startId, 'last': endId};
}

enum PokemonForm {
  allforms('All Forms'),
  alolan('Alolan'),
  fusion('Fusion'),
  galar('Galarian'),
  gmax('Gigamax'),
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

enum PokemonType {
  grass(
    'Grass',
    PokemonTypePalette.grass,
    PokemonTypeIcons.grass,
    PokemonTypeIcons.grassBg,
  ),
  poison(
    'Poison',
    PokemonTypePalette.poison,
    PokemonTypeIcons.poison,
    PokemonTypeIcons.poisonBg,
  ),
  fire(
    'Fire',
    PokemonTypePalette.fire,
    PokemonTypeIcons.fire,
    PokemonTypeIcons.fireBg,
  ),
  flying(
    'Flying',
    PokemonTypePalette.flying,
    PokemonTypeIcons.flying,
    PokemonTypeIcons.flyingBg,
  ),
  water(
    'Water',
    PokemonTypePalette.water,
    PokemonTypeIcons.water,
    PokemonTypeIcons.waterBg,
  ),
  bug(
    'Bug',
    PokemonTypePalette.bug,
    PokemonTypeIcons.bug,
    PokemonTypeIcons.bugBg,
  ),
  normal(
    'Normal',
    PokemonTypePalette.normal,
    PokemonTypeIcons.normal,
    PokemonTypeIcons.normalBg,
  ),
  electric(
    'Electric',
    PokemonTypePalette.electric,
    PokemonTypeIcons.electric,
    PokemonTypeIcons.electricBg,
  ),
  ground(
    'Ground',
    PokemonTypePalette.ground,
    PokemonTypeIcons.ground,
    PokemonTypeIcons.groundBg,
  ),
  fairy(
    'Fairy',
    PokemonTypePalette.fairy,
    PokemonTypeIcons.fairy,
    PokemonTypeIcons.fairyBg,
  ),
  fighting(
    'Fighting',
    PokemonTypePalette.fighting,
    PokemonTypeIcons.fighting,
    PokemonTypeIcons.fightingBg,
  ),
  psychic(
    'Psychic',
    PokemonTypePalette.psychic,
    PokemonTypeIcons.psychic,
    PokemonTypeIcons.psychicBg,
  ),
  rock(
    'Rock',
    PokemonTypePalette.rock,
    PokemonTypeIcons.rock,
    PokemonTypeIcons.rockBg,
  ),
  steel(
    'Steel',
    PokemonTypePalette.steel,
    PokemonTypeIcons.steel,
    PokemonTypeIcons.steelBg,
  ),
  ice(
    'Ice',
    PokemonTypePalette.ice,
    PokemonTypeIcons.ice,
    PokemonTypeIcons.iceBg,
  ),
  ghost(
    'Ghost',
    PokemonTypePalette.ghost,
    PokemonTypeIcons.ghost,
    PokemonTypeIcons.ghostBg,
  ),
  dragon(
    'Dragon',
    PokemonTypePalette.dragon,
    PokemonTypeIcons.dragon,
    PokemonTypeIcons.dragonBg,
  ),
  dark(
    'Dark',
    PokemonTypePalette.dark,
    PokemonTypeIcons.dark,
    PokemonTypeIcons.darkBg,
  ),

  unknown(
    'Unknown',
    PokemonTypePalette.normal,
    PokemonTypeIcons.normal,
    PokemonTypeIcons.normalBg,
  );

  final String name;
  final Color color;
  final String icon; // main colored icon path
  final String iconBg; // background/accent icon path

  const PokemonType(this.name, this.color, this.icon, this.iconBg);

  static PokemonType parse(String rawValue) {
    return values.firstWhere(
      (e) => e.name.toLowerCase() == rawValue,
      orElse: () => unknown,
    );
  }
}
