import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_detail_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_3d_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_detail_hive_model.dart';

class DatabaseService {
  final Box<Pokemon3dHive> _pokemonListBox;
  final Box<PokemonDetailHive> _pokemondetailsBox;
  final Box<EvolutionDetailHive> _pokemonEvolutionBox;
  final Box<Pokemon3dHive> _pokemonViewedBox;
  final Box<String?> _pokemonListEntityIdBox;

  final log = Logger();

  late final Box<int> _speciesIdBox;
  DatabaseService({
    required Box<String?> pokemonListEntityIdBox,
    required Box<Pokemon3dHive> pokemonListBox,
    required Box<PokemonDetailHive> pokemondetailsBox,
    required Box<EvolutionDetailHive> pokemonEvolutionBox,
    required Box<Pokemon3dHive> pokemonViewedBox,

    required Box<int> speciesIdBox,
  }) : _pokemonListBox = pokemonListBox,
       _pokemondetailsBox = pokemondetailsBox,
       _pokemonEvolutionBox = pokemonEvolutionBox,
       _pokemonViewedBox = pokemonViewedBox,
       _speciesIdBox = speciesIdBox,
       _pokemonListEntityIdBox = pokemonListEntityIdBox;
  Future<void> putPokemonList(List<Pokemon3dHive> list) async {
    await _pokemonListBox.addAll(list);
  }

  Future<void> putViewedPokemon(Pokemon3dHive pokemon) async {
    await _pokemonViewedBox.put(pokemon.id, pokemon);
  }

  List<Pokemon3dHive> getPokemonList() {
    return _pokemonListBox.values.toList();
  }

  Future<void> putPokemonListEtag(String? etag) async {
    log.i(etag);
    await _pokemonListEntityIdBox.put('listEtag', etag);
  }

  String? getPokemonListEtag() {
    return _pokemonListEntityIdBox.get('listEtag');
  }

  List<Pokemon3dHive> getViewedPokemonList() {
    log.d("inside getViewedPokemonList");
    return _pokemonViewedBox.values.toList();
  }

  Future<void> putPokemonDetails(PokemonDetailHive data) async {
    _pokemondetailsBox.put(data.id, data);
  }

  Future<void> putEvolutionDetails({
    required EvolutionDetailHive data,
    required int pokemonId,
  }) async {
    log.i(
      "inside database service species ${data.speciesId}  pokemon $pokemonId",
    );
    _speciesIdBox.put(pokemonId, data.speciesId);

    _pokemonEvolutionBox.put(data.speciesId, data);
  }

  PokemonDetailHive? getPokemonDetails(int id) {
    return _pokemondetailsBox.get(id);
  }

  EvolutionDetailHive? getEvolutionDetails(int id) {
    final speciesId = _speciesIdBox.get(id);

    if (speciesId == null) {
      return null;
    }
    log.i("inside database service getting species $speciesId  pokemon $id");

    return _pokemonEvolutionBox.get(speciesId);
  }
}
