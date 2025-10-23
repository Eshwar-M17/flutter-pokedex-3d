import 'package:hive/hive.dart';

part 'pokemon_3d_hive_model.g.dart';

@HiveType(typeId: 2)
class Pokemon3dHive extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final List<PokemonFormHive> forms;

  Pokemon3dHive({required this.id, required this.forms});
}

@HiveType(typeId: 3)
class PokemonFormHive extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String model;

  @HiveField(2)
  final String formName;

  PokemonFormHive({
    required this.name,
    required this.model,
    required this.formName,
  });
}
