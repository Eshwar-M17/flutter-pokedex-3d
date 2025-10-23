import 'dart:convert';
import 'package:hive/hive.dart';

// part 'evolution_chain_model.g.dart'; // generated file

// @HiveType(typeId: 10)
// class EvolutionModel {
//   @HiveField(0)
//   final Chain chain;

//   @HiveField(1)
//   final int id;

//   EvolutionModel({required this.chain, required this.id});

//   EvolutionModel.empty() : chain = Chain.empty(), id = 0;

//   factory EvolutionModel.fromRawJson(String str) {
//     return EvolutionModel.fromJson(json.decode(str));
//   }

//   factory EvolutionModel.fromJson(Map<String, dynamic> json) {

//     return EvolutionModel(chain: Chain.fromJson(json["chain"]), id: json["id"]);
//   }

//   Map<String, dynamic> toJson() => {"chain": chain.toJson(), "id": id};
// }

// @HiveType(typeId: 11)
// class Chain {
//   @HiveField(0)
//   final List<EvolutionDetail> evolutionDetails;

//   @HiveField(1)
//   final List<Chain> evolvesTo;

//   @HiveField(2)
//   final Species species;

//   Chain({
//     required this.evolutionDetails,
//     required this.evolvesTo,
//     required this.species,
//   });

//   Chain.empty()
//     : evolutionDetails = [],
//       evolvesTo = [],
//       species = Species.empty();

//   factory Chain.fromJson(Map<String, dynamic> json) => Chain(
//     evolutionDetails: (json["evolution_details"] as List? ?? []).map((x) {

//       return EvolutionDetail.fromJson(x ?? {});
//     }).toList(),
//     evolvesTo: (json["evolves_to"] as List? ?? []).map((e) {
//       return Chain.fromJson(e);
//     }).toList(),
//     // List<Chain>.from(
//     //   json["evolves_to"].map((x) => Chain.fromJson(x)),
//     // ),,
//     species: Species.fromJson(json["species"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "evolution_details": List<dynamic>.from(
//       evolutionDetails.map((x) => x.toJson()),
//     ),
//     "evolves_to": List<dynamic>.from(evolvesTo.map((x) => x.toJson())),
//     "species": species.toJson(),
//   };
// }

// @HiveType(typeId: 12)
// class EvolutionDetail {
//   @HiveField(0)
//   final int minLevel;

//   EvolutionDetail({required this.minLevel});

//   EvolutionDetail.empty() : minLevel = 0;

//   factory EvolutionDetail.fromJson(Map<String, dynamic> json) =>
//       EvolutionDetail(minLevel: json["min_level"] ?? 0);

//   Map<String, dynamic> toJson() => {"min_level": minLevel};
// }

// @HiveType(typeId: 13)
// class Species {
//   @HiveField(0)
//   final String name;

//   @HiveField(1)
//   final String url;

//   Species({required this.name, required this.url});

//   Species.empty() : name = '', url = '';

//   factory Species.fromJson(Map<String, dynamic> json) =>
//       Species(name: json['name'] ?? '', url: json['url'] ?? '');

//   Map<String, dynamic> toJson() => {'name': name, 'url': url};

//   int get id {
//     final uri = Uri.parse(url);
//     final segments = uri.pathSegments;
//     return int.tryParse(
//           segments.isNotEmpty
//               ? (segments.last.isEmpty
//                     ? segments[segments.length - 2]
//                     : segments.last)
//               : '',
//         ) ??
//         0;
//   }
// }

// @HiveType(typeId: 14)
// class SpeciesModel {
//   @HiveField(0)
//   final EvolutionChain evolutionChain;

//   SpeciesModel({required this.evolutionChain});

//   factory SpeciesModel.fromJson(Map<String, dynamic> json) => SpeciesModel(
//     evolutionChain: EvolutionChain.fromJson(json["evolution_chain"]),
//   );

//   Map<String, dynamic> toJson() => {"evolution_chain": evolutionChain.toJson()};
// }

// @HiveType(typeId: 15)
// class EvolutionChain {
//   @HiveField(0)
//   final String url;

//   EvolutionChain({required this.url});

//   factory EvolutionChain.fromJson(Map<String, dynamic> json) =>
//       EvolutionChain(url: json["url"] ?? '');

//   Map<String, dynamic> toJson() => {"url": url};
// }

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
