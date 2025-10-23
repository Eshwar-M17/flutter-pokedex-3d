import 'package:hive/hive.dart';

part 'evolution_hive_model.g.dart';

@HiveType(typeId: 4)
class SpeciesHive extends HiveObject {
  @HiveField(0)
  final int speciesId;

  @HiveField(1)
  final PokemonSpeciesHive pokemonSpeciesHive;

  SpeciesHive({required this.speciesId, required this.pokemonSpeciesHive});
}

@HiveType(typeId: 5)
class PokemonSpeciesHive extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final bool isBaby;

  @HiveField(3)
  final List<EvolutionDetailHive> evolutionDetails;

  @HiveField(4)
  final List<PokemonSpeciesHive> evolvesTo;

  PokemonSpeciesHive({
    required this.id,
    required this.name,
    required this.isBaby,
    required this.evolutionDetails,
    required this.evolvesTo,
  });
}

@HiveType(typeId: 6)
class EvolutionDetailHive extends HiveObject {
  @HiveField(0)
  final int? gender;

  @HiveField(1)
  final String trigger;

  @HiveField(2)
  final int minLevel;

  EvolutionDetailHive({
    this.gender,
    required this.trigger,
    required this.minLevel,
  });
}
