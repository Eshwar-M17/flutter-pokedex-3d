
import 'package:hive_ce_flutter/hive_flutter.dart' ;

part 'evolution_detail_hive_model.g.dart';

@HiveType(typeId: 4)
class EvolutionDetailHive extends HiveObject {
  @HiveField(0)
  final int speciesId;

  @HiveField(1)
  final PokemonSpeciesHive pokemonSpeciesHive;

  EvolutionDetailHive({
    required this.speciesId,
    required this.pokemonSpeciesHive,
  });
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
  final List<TriggerDetailHive> triggerDetails;

  @HiveField(4)
  final List<PokemonSpeciesHive> evolvesTo;

  PokemonSpeciesHive({
    required this.id,
    required this.name,
    required this.isBaby,
    required this.triggerDetails,
    required this.evolvesTo,
  });
}

@HiveType(typeId: 6)
class TriggerDetailHive extends HiveObject {
  @HiveField(0)
  final int? gender;

  @HiveField(1)
  final String trigger;

  @HiveField(2)
  final int minLevel;

  TriggerDetailHive({
    this.gender,
    required this.trigger,
    required this.minLevel,
  });
}
