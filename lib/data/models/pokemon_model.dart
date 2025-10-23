// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:pokedex_3d/core/icons_set.dart';

// part 'pokemon_model.g.dart';

// @HiveType(typeId: 0)
// class PokemonModel extends HiveObject {
//   @HiveField(0)
//   final int id;
//   @HiveField(1)
//   final List<PokemonForm> forms;
//   PokemonModel({required this.id, required this.forms});

//   PokemonModel copyWith({int? id, List<PokemonForm>? forms}) {
//     return PokemonModel(id: id ?? this.id, forms: forms ?? this.forms);
//   }

//   factory PokemonModel.fromMap(Map<String, dynamic> map) {
//     return PokemonModel(
//       id: map['id'] ?? 000,
//       forms: List<PokemonForm>.from(
//         (map['forms']).map<PokemonForm>(
//           (x) => PokemonForm.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//     );
//   }

//   factory PokemonModel.fromJson(String source) =>
//       PokemonModel.fromMap(json.decode(source) as Map<String, dynamic>);

//   Map<String, dynamic> toMap() {
//     return {'id': id, 'forms': forms.map((f) => f.toMap()).toList()};
//   }

//   /// Same naming style as your other classes' `fromJson(String)`
//   String toRawJson() => json.encode(toMap());

//   /// For common Dart conventions (e.g. json_serializable compatibility)
//   Map<String, dynamic> toJson() => toMap();

//   @override
//   String toString() => 'PokemonModel(id: $id, forms: $forms)';

//   @override
//   bool operator ==(covariant PokemonModel other) {
//     if (identical(this, other)) return true;

//     return other.id == id && listEquals(other.forms, forms);
//   }

//   @override
//   int get hashCode => id.hashCode ^ forms.hashCode;

//   /// ✅ Empty constructor for initial/placeholder state
//   factory PokemonModel.empty() {
//     return PokemonModel(
//       id: 0,
//       forms: const [],
//     );
//   }
// }

// @HiveType(typeId: 1)
// class PokemonForm {
//   @HiveField(0)
//   final String name;
//   @HiveField(1)
//   final String model;
//   @HiveField(2)
//   final String formName;
//   PokemonForm({
//     required this.name,
//     required this.model,
//     required this.formName,
//   });

//   PokemonForm copyWith({String? name, String? model, String? formName}) {
//     return PokemonForm(
//       name: name ?? this.name,
//       model: model ?? this.model,
//       formName: formName ?? this.formName,
//     );
//   }

//   factory PokemonForm.fromMap(Map<String, dynamic> map) {
//     return PokemonForm(
//       name: map['name'] ?? "No_name",
//       model: map['model'] ?? "no_model",
//       formName: map['formName'] ?? 'no_forms',
//     );
//   }

//   factory PokemonForm.fromJson(String source) =>
//       PokemonForm.fromMap(json.decode(source) as Map<String, dynamic>);
//   Map<String, dynamic> toMap() {
//     return {'name': name, 'model': model, 'formName': formName};
//   }

//   String toRawJson() => json.encode(toMap());
//   Map<String, dynamic> toJson() => toMap();
//   @override
//   String toString() => 'Form(name: $name, model: $model, formName: $formName)';

//   @override
//   bool operator ==(covariant PokemonForm other) {
//     if (identical(this, other)) return true;

//     return other.name == name &&
//         other.model == model &&
//         other.formName == formName;
//   }

//   @override
//   int get hashCode => name.hashCode ^ model.hashCode ^ formName.hashCode;
// }

// @HiveType(typeId: 2)
// class PokemonDeatilsModel {
//   @HiveField(0)
//   final int baseExperience;
//   @HiveField(1)
//   final int height;
//   @HiveField(2)
//   final int id;
//   @HiveField(3)
//   final String name;
//   @HiveField(4)
//   final int order;
//   @HiveField(5)
//   final List<StatElement> stats;
//   @HiveField(6)
//   final List<PokemonTypeWrapper> types;
//   @HiveField(7)
//   final int weight;

//   PokemonDeatilsModel({
//     required this.baseExperience,
//     required this.height,
//     required this.id,
//     required this.name,
//     required this.order,
//     required this.stats,
//     required this.types,
//     required this.weight,
//   });

//   PokemonDeatilsModel copyWith({
//     int? baseExperience,
//     int? height,
//     int? id,
//     String? name,
//     int? order,
//     List<StatElement>? stats,
//     List<PokemonTypeWrapper>? types,
//     int? weight,
//   }) => PokemonDeatilsModel(
//     baseExperience: baseExperience ?? this.baseExperience,
//     height: height ?? this.height,
//     id: id ?? this.id,
//     name: name ?? this.name,
//     order: order ?? this.order,
//     stats: stats ?? this.stats,
//     types: types ?? this.types,
//     weight: weight ?? this.weight,
//   );

//   factory PokemonDeatilsModel.fromRawJson(String str) =>
//       PokemonDeatilsModel.fromJson(json.decode(str));

//   factory PokemonDeatilsModel.fromJson(Map<String, dynamic> json) =>
//       PokemonDeatilsModel(
//         baseExperience: json["base_experience"] ?? 0,
//         height: json["height"] ?? 0,
//         id: json["id"] ?? 0,
//         name: json["name"] ?? '',
//         order: json["order"] ?? 0,
//         stats: List<StatElement>.from(
//           (json["stats"] ?? []).map((x) => StatElement.fromJson(x)),
//         ),
//         types: List<PokemonTypeWrapper>.from(
//           (json["types"] ?? []).map((x) => PokemonTypeWrapper.fromJson(x)),
//         ),
//         weight: json["weight"] ?? 0,
//       );

//   Map<String, dynamic> toMap() {
//     return {
//       'base_experience': baseExperience,
//       'height': height,
//       'id': id,
//       'name': name,
//       'order': order,
//       'stats': stats.map((s) => s.toJson()).toList(),
//       'types': types.map((t) => t.toJson()).toList(),
//       'weight': weight,
//     };
//   }

//   String toRawJson() => json.encode(toMap());
//   Map<String, dynamic> toJson() => toMap();

//   /// ✅ Empty constructor
//   factory PokemonDeatilsModel.empty() {
//     return  PokemonDeatilsModel(
//       baseExperience: 0,
//       height: 0,
//       id: 0,
//       name: '',
//       order: 0,
//       stats: [],
//       types: [],
//       weight: 0,
//     );
//   }
// }

// @HiveType(typeId: 3)
// class StatElement {
//   @HiveField(0)
//   final int baseStat;
//   @HiveField(1)
//   final int effort;
//   @HiveField(2)
//   final TypeClass stat;

//   StatElement({
//     required this.baseStat,
//     required this.effort,
//     required this.stat,
//   });

//   StatElement copyWith({int? baseStat, int? effort, TypeClass? stat}) =>
//       StatElement(
//         baseStat: baseStat ?? this.baseStat,
//         effort: effort ?? this.effort,
//         stat: stat ?? this.stat,
//       );

//   factory StatElement.fromRawJson(String str) =>
//       StatElement.fromJson(json.decode(str));
//   Map<String, dynamic> toMap() {
//     return {'base_stat': baseStat, 'effort': effort, 'stat': stat.toJson()};
//   }

//   String toRawJson() => json.encode(toMap());
//   Map<String, dynamic> toJson() => toMap();

//   factory StatElement.fromJson(Map<String, dynamic> json) => StatElement(
//     baseStat: json["base_stat"] ?? 0,
//     effort: json["effort"] ?? 0,
//     stat: TypeClass.fromJson(json["stat"]),
//   );
// }

// @HiveType(typeId: 4)
// class TypeClass {
//   @HiveField(0)
//   final String name;
//   @HiveField(1)
//   final String url;

//   TypeClass({required this.name, required this.url});

//   TypeClass copyWith({String? name, String? url}) =>
//       TypeClass(name: name ?? this.name, url: url ?? this.url);

//   factory TypeClass.fromRawJson(String str) =>
//       TypeClass.fromJson(json.decode(str));

//   factory TypeClass.fromJson(Map<String, dynamic> json) =>
//       TypeClass(name: json["name"] ?? '', url: json["url"] ?? '');
//   Map<String, dynamic> toMap() {
//     return {'name': name, 'url': url};
//   }

//   String toRawJson() => json.encode(toMap());
//   Map<String, dynamic> toJson() => toMap();
// }

// @HiveType(typeId: 5)
// class PokemonTypeWrapper {
//   @HiveField(0)
//   final int slot;
//   @HiveField(1)
//   final TypeClass type;

//   PokemonTypeWrapper({required this.slot, required this.type});

//   PokemonTypeWrapper copyWith({int? slot, TypeClass? type}) =>
//       PokemonTypeWrapper(slot: slot ?? this.slot, type: type ?? this.type);

//   factory PokemonTypeWrapper.fromRawJson(String str) =>
//       PokemonTypeWrapper.fromJson(json.decode(str));

//   factory PokemonTypeWrapper.fromJson(Map<String, dynamic> json) =>
//       PokemonTypeWrapper(
//         slot: json["slot"] ?? 0,
//         type: TypeClass.fromJson(json["type"]),
//       );
//   Map<String, dynamic> toMap() {
//     return {'slot': slot, 'type': type.toJson()};
//   }

//   String toRawJson() => json.encode(toMap());
//   Map<String, dynamic> toJson() => toMap();
// }

import 'dart:ui';

import 'package:pokedex_3d/core/icons_set.dart';

enum PokemonType {
  grass(
    'Grass',
    PokemonTypePalette.grass,
    PokemonTypeIcons.grass,
    PokemonTypeIcons.grassBg,
  ),
  poison(
    'Poison',
    PokemonTypePalette.poison,
    PokemonTypeIcons.poison,
    PokemonTypeIcons.poisonBg,
  ),
  fire(
    'Fire',
    PokemonTypePalette.fire,
    PokemonTypeIcons.fire,
    PokemonTypeIcons.fireBg,
  ),
  flying(
    'Flying',
    AppColors.lilac,
    PokemonTypeIcons.flying,
    PokemonTypeIcons.flyingBg,
  ),
  water(
    'Water',
    PokemonTypePalette.water,
    PokemonTypeIcons.water,
    PokemonTypeIcons.waterBg,
  ),
  bug(
    'Bug',
    PokemonTypePalette.bug,
    PokemonTypeIcons.bug,
    PokemonTypeIcons.bugBg,
  ),
  normal(
    'Normal',
    PokemonTypePalette.normal,
    PokemonTypeIcons.normal,
    PokemonTypeIcons.normalBg,
  ),
  electric(
    'Electric',
    PokemonTypePalette.electric,
    PokemonTypeIcons.electric,
    PokemonTypeIcons.electricBg,
  ),
  ground(
    'Ground',
    PokemonTypePalette.ground,
    PokemonTypeIcons.ground,
    PokemonTypeIcons.groundBg,
  ),
  fairy(
    'Fairy',
    PokemonTypePalette.fairy,
    PokemonTypeIcons.fairy,
    PokemonTypeIcons.fairyBg,
  ),
  fighting(
    'Fighting',
    PokemonTypePalette.fighting,
    PokemonTypeIcons.fighting,
    PokemonTypeIcons.fightingBg,
  ),
  psychic(
    'Psychic',
    PokemonTypePalette.psychic,
    PokemonTypeIcons.psychic,
    PokemonTypeIcons.psychicBg,
  ),
  rock(
    'Rock',
    PokemonTypePalette.rock,
    PokemonTypeIcons.rock,
    PokemonTypeIcons.rockBg,
  ),
  steel(
    'Steel',
    PokemonTypePalette.steel,
    PokemonTypeIcons.steel,
    PokemonTypeIcons.steelBg,
  ),
  ice('Ice', AppColors.lightCyan, PokemonTypeIcons.ice, PokemonTypeIcons.iceBg),
  ghost(
    'Ghost',
    AppColors.purple,
    PokemonTypeIcons.ghost,
    PokemonTypeIcons.ghostBg,
  ),
  dragon(
    'Dragon',
    PokemonTypePalette.dragon,
    PokemonTypeIcons.dragon,
    PokemonTypeIcons.dragonBg,
  ),
  dark('Dark', AppColors.black, PokemonTypeIcons.dark, PokemonTypeIcons.darkBg),
  monster('Monster', AppColors.lightBlue, '', ''), // No icons provided
  unknown('Unknown', AppColors.lightBlue, '', '');

  final String name;
  final Color color;
  final String icon; // main colored icon path
  final String iconBg; // background/accent icon path

  const PokemonType(this.name, this.color, this.icon, this.iconBg);

  static PokemonType parse(String rawValue) {
    return values.firstWhere(
      (e) => e.name.toLowerCase() == rawValue,
      orElse: () => unknown,
    );
  }
}

abstract class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color beige = Color(0xFFA8A878);
  static const Color black = Color(0xFF303943);
  static const Color blue = Color(0xFF429BED);
  static const Color brown = Color(0xFFB1736C);
  static const Color darkBrown = Color(0xD0795548);
  static const Color grey = Color(0x64303943);
  static const Color indigo = Color(0xFF6C79DB);
  static const Color lightBlue = Color(0xFF7AC7FF);
  static const Color lightBrown = Color(0xFFCA8179);
  static const Color whiteGrey = Color(0xFFFDFDFD);
  static const Color lightCyan = Color(0xFF98D8D8);
  static const Color lightGreen = Color(0xFF63BC5A);
  static const Color lighterGrey = Color(0xFFF4F5F4);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color lightPink = Color(0xFFEE99AC);
  static const Color lightPurple = Color(0xFF9F5BBA);
  static const Color lightRed = Color(0xFFFB6C6C);
  static const Color lightTeal = Color(0xFF48D0B0);
  static const Color lightYellow = Color(0xFFFFCE4B);
  static const Color lilac = Color(0xFFA890F0);
  static const Color pink = Color(0xFFF85888);
  static const Color purple = Color(0xFF7C538C);
  static const Color red = Color(0xFFFA6555);
  static const Color teal = Color(0xFF4FC1A6);
  static const Color yellow = Color(0xFFF6C747);
  static const Color semiGrey = Color(0xFFbababa);
  static const Color violet = Color(0xD07038F8);
  static const Color orange = Color(0xFFFF9D5C);
}

class PokemonTypePalette {
  static const Color all = Color(0xFF333333); // Todos os tipos
  static const Color water = Color(0xFF30B1FC); // Água
  static const Color dragon = Color(0xFF0B6DC3); // Dragão
  static const Color electric = Color(0xFFF4D23C); // Elétrico
  static const Color fairy = Color(0xFFEC8FE6); // Fada
  static const Color ghost = Color(0xFF5269AD); // Fantasma
  static const Color fire = Color(0xFFE96808); // Fogo
  static const Color ice = Color(0xFF73CEC0); // Gelo
  static const Color grass = Color(0xFF63BC5A); // Grama
  static const Color bug = Color(0xFF91C12F); // Inseto
  static const Color fighting = Color(0xFFCE416B); // Lutador
  static const Color normal = Color(0xFF919AA2); // Normal
  static const Color dark = Color(0xFF5A5465); // Noturno
  static const Color steel = Color(0xFF5A8EA2); // Metal
  static const Color rock = Color(0xFFC5B78C); // Pedra
  static const Color psychic = Color(0xFFFA7179); // Psíquico
  static const Color ground = Color(0xFFD97845); // Terrestre
  static const Color poison = Color(0xFFB567CE); // Venenoso
  static const Color flying = Color(0xFF89AAE3); // Voador

  /// Map for quick lookup by type name
  static const Map<String, Color> byType = {
    'all': all,
    'water': water,
    'dragon': dragon,
    'electric': electric,
    'fairy': fairy,
    'ghost': ghost,
    'fire': fire,
    'ice': ice,
    'grass': grass,
    'bug': bug,
    'fighting': fighting,
    'normal': normal,
    'dark': dark,
    'steel': steel,
    'rock': rock,
    'psychic': psychic,
    'ground': ground,
    'poison': poison,
    'flying': flying,
  };
}
