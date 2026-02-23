// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonDetailHiveAdapter extends TypeAdapter<PokemonDetailHive> {
  @override
  final typeId = 0;

  @override
  PokemonDetailHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonDetailHive(
      baseExperience: (fields[0] as num).toInt(),
      height: (fields[1] as num).toInt(),
      weight: (fields[2] as num).toInt(),
      id: (fields[3] as num).toInt(),
      name: fields[4] as String,
      stats: (fields[5] as List).cast<StatHive>(),
      types: (fields[6] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDetailHive obj) {
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
      other is PokemonDetailHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatHiveAdapter extends TypeAdapter<StatHive> {
  @override
  final typeId = 1;

  @override
  StatHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StatHive(
      baseStat: (fields[0] as num).toInt(),
      name: fields[1] as String,
      effort: (fields[2] as num).toInt(),
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
