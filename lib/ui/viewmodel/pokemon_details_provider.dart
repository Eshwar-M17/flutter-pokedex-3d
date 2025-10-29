import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_3d/core/errors/error.dart';
import 'package:pokedex_3d/core/result.dart';
import 'package:pokedex_3d/data/models/models/pokemon/pokemon.dart';
import 'package:pokedex_3d/data/providers/repository_providers.dart';

final pokemonDetailsProvider = FutureProvider.family<PokemonModel, int>((
  ref,
  id,
) async {
  final repo = ref.read(pokemonDetailsRepositoryProvider);
  final pokemonDetailsState = await repo.getPokemonDetails(id);
  switch (pokemonDetailsState) {
    case Ok<PokemonModel>():
      return pokemonDetailsState.value;

    case Error<PokemonModel>():
      throw pokemonDetailsState.error;
  }
});
