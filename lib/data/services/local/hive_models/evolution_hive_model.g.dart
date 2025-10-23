// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SpeciesHiveAdapter extends TypeAdapter<SpeciesHive> {
  @override
  final int typeId = 4;

  @override
  SpeciesHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SpeciesHive(
      speciesId: fields[0] as int,
      pokemonSpeciesHive: fields[1] as PokemonSpeciesHive,
    );
  }

  @override
  void write(BinaryWriter writer, SpeciesHive obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.speciesId)
      ..writeByte(1)
      ..write(obj.pokemonSpeciesHive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpeciesHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokemonSpeciesHiveAdapter extends TypeAdapter<PokemonSpeciesHive> {
  @override
  final int typeId = 5;

  @override
  PokemonSpeciesHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonSpeciesHive(
      id: fields[0] as int,
      name: fields[1] as String,
      isBaby: fields[2] as bool,
      evolutionDetails: (fields[3] as List).cast<EvolutionDetailHive>(),
      evolvesTo: (fields[4] as List).cast<PokemonSpeciesHive>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonSpeciesHive obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.isBaby)
      ..writeByte(3)
      ..write(obj.evolutionDetails)
      ..writeByte(4)
      ..write(obj.evolvesTo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonSpeciesHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EvolutionDetailHiveAdapter extends TypeAdapter<EvolutionDetailHive> {
  @override
  final int typeId = 6;

  @override
  EvolutionDetailHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EvolutionDetailHive(
      gender: fields[0] as int?,
      trigger: fields[1] as String,
      minLevel: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, EvolutionDetailHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.gender)
      ..writeByte(1)
      ..write(obj.trigger)
      ..writeByte(2)
      ..write(obj.minLevel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EvolutionDetailHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
