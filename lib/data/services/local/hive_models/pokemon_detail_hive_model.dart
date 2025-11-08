import 'package:hive/hive.dart';

part 'pokemon_detail_hive_model.g.dart';

@HiveType(typeId: 0)
class PokemonDetailHive extends HiveObject {
  @HiveField(0)
  final int baseExperience;

  @HiveField(1)
  final int height;

  @HiveField(2)
  final int weight;

  @HiveField(3)
  final int id;

  @HiveField(4)
  final String name;

  @HiveField(5)
  final List<StatHive> stats;

  @HiveField(6)
  final List<String> types;

  PokemonDetailHive({
    required this.baseExperience,
    required this.height,
    required this.weight,
    required this.id,
    required this.name,
    required this.stats,
    required this.types,
  });
}

@HiveType(typeId: 1)
class StatHive extends HiveObject {
  @HiveField(0)
  final int baseStat;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int effort;

  StatHive({required this.baseStat, required this.name, required this.effort});
}
