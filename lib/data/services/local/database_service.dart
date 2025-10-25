import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:pokedex_3d/data/services/local/hive_models/evolution_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_3d_hive_model.dart';
import 'package:pokedex_3d/data/services/local/hive_models/pokemon_hive_model.dart';

class DatabaseService {
  late final Box<Pokemon3dHive> _pokemonListBox;
  late final Box<PokemonHive> _pokemondetailsBox;
  late final Box<SpeciesHive> _pokemonEvolutionBox;
  late final Box<Pokemon3dHive> _pokemonViewedBox;
  final log = Logger();

  late final Box<int> _speciesIdBox;
  DatabaseService({
    required Box<Pokemon3dHive> pokemonListBox,
    required Box<PokemonHive> pokemondetailsBox,
    required Box<SpeciesHive> pokemonEvolutionBox,
    required Box<Pokemon3dHive> pokemonViewedBox,

    required Box<int> speciesIdBox,
  }) : _pokemonListBox = pokemonListBox,
       _pokemondetailsBox = pokemondetailsBox,
       _pokemonEvolutionBox = pokemonEvolutionBox,
       _pokemonViewedBox = pokemonViewedBox,
       _speciesIdBox = speciesIdBox;
  Future<void> putPokemonList(List<Pokemon3dHive> list) async {
    await _pokemonListBox.addAll(list);
  }

  Future<void> putViewedPokemon(Pokemon3dHive pokemon) async {
    await _pokemonViewedBox.put(pokemon.id,pokemon);
  }

  List<Pokemon3dHive> getPokemonList() {
    return _pokemonListBox.values.toList();
  }

  List<Pokemon3dHive> getViewedPokemonList() {
    log.d("inside getViewedPokemonList");
    return _pokemonViewedBox.values.toList();
  }

  Future<void> putPokemonDetails(PokemonHive data) async {
    _pokemondetailsBox.put(data.id, data);
  }

  Future<void> putEvolutionDetails({
    required SpeciesHive data,
    required int pokemonId,
  }) async {
    log.i(
      "inside database service species ${data.speciesId}  pokemon $pokemonId",
    );
    _speciesIdBox.put(pokemonId, data.speciesId);

    _pokemonEvolutionBox.put(data.speciesId, data);
  }

  PokemonHive? getPokemonDetails(int id) {
    return _pokemondetailsBox.get(id);
  }

  SpeciesHive? getEvolutionDetails(int id) {
    final speciesId = _speciesIdBox.get(id);

    if (speciesId == null) {
      return null;
    }
    log.i("inside database service getting species $speciesId  pokemon $id");

    return _pokemonEvolutionBox.get(speciesId);
  }
}
