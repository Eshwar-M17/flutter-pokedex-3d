import 'package:hive/hive.dart';


@HiveType(typeId: 16)
class PokemonChainNode {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int? minLevel;

  PokemonChainNode(this.id, this.name, this.minLevel);
}
