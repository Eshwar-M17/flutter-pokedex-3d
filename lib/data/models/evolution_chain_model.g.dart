// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonChainNodeAdapter extends TypeAdapter<PokemonChainNode> {
  @override
  final typeId = 16;

  @override
  PokemonChainNode read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonChainNode(
      (fields[0] as num).toInt(),
      fields[1] as String,
      (fields[2] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonChainNode obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.minLevel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonChainNodeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
