

import 'package:hive_ce_flutter/hive_flutter.dart';
part 'evolution_chain_model.g.dart';
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
