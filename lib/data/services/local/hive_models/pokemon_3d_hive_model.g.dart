// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_3d_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class Pokemon3dHiveAdapter extends TypeAdapter<Pokemon3dHive> {
  @override
  final int typeId = 2;

  @override
  Pokemon3dHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pokemon3dHive(
      id: fields[0] as int,
      forms: (fields[1] as List).cast<PokemonFormHive>(),
    );
  }

  @override
  void write(BinaryWriter writer, Pokemon3dHive obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.forms);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pokemon3dHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokemonFormHiveAdapter extends TypeAdapter<PokemonFormHive> {
  @override
  final int typeId = 3;

  @override
  PokemonFormHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonFormHive(
      name: fields[0] as String,
      model: fields[1] as String,
      formName: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonFormHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.model)
      ..writeByte(2)
      ..write(obj.formName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonFormHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
