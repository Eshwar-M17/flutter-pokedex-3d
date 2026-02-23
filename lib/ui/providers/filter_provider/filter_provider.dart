import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_3d/core/utils/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'filter_provider.freezed.dart';
part 'filter_provider.g.dart';

@freezed
abstract class FilterModel with _$FilterModel {
  const factory FilterModel({
    @Default('') String query,
    @Default(PokemonGen.gen0) PokemonGen gen,
    @Default(PokemonForm.allforms) PokemonForm form,
  }) = _FilterModel;
}

@riverpod
class Filter extends _$Filter {
  @override
  FilterModel build() {
    return FilterModel();
  }

  void updateFilter(FilterModel filter) {
    state = filter;
  }
}
