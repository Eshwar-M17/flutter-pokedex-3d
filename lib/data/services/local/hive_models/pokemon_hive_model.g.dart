// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonHiveAdapter extends TypeAdapter<PokemonHive> {
  @override
  final int typeId = 0;

  @override
  PokemonHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonHive(
      baseExperience: fields[0] as int,
      height: fields[1] as int,
      weight: fields[2] as int,
      id: fields[3] as int,
      name: fields[4] as String,
      stats: (fields[5] as List).cast<StatHive>(),
      types: (fields[6] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonHive obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.baseExperience)
      ..writeByte(1)
      ..write(obj.height)
      ..writeByte(2)
      ..write(obj.weight)
      ..writeByte(3)
      ..write(obj.id)
      ..writeByte(4)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.stats)
      ..writeByte(6)
      ..write(obj.types);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatHiveAdapter extends TypeAdapter<StatHive> {
  @override
  final int typeId = 1;

  @override
  StatHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StatHive(
      baseStat: fields[0] as int,
      name: fields[1] as String,
      effort: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, StatHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.baseStat)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.effort);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
