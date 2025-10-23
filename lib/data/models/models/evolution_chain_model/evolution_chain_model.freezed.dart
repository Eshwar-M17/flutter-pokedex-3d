// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Species {
  int get speciesId => throw _privateConstructorUsedError;
  PokemonSpecies get pokemonSpecies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpeciesCopyWith<Species> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesCopyWith<$Res> {
  factory $SpeciesCopyWith(Species value, $Res Function(Species) then) =
      _$SpeciesCopyWithImpl<$Res, Species>;
  @useResult
  $Res call({int speciesId, PokemonSpecies pokemonSpecies});

  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies;
}

/// @nodoc
class _$SpeciesCopyWithImpl<$Res, $Val extends Species>
    implements $SpeciesCopyWith<$Res> {
  _$SpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speciesId = null,
    Object? pokemonSpecies = null,
  }) {
    return _then(_value.copyWith(
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as int,
      pokemonSpecies: null == pokemonSpecies
          ? _value.pokemonSpecies
          : pokemonSpecies // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies {
    return $PokemonSpeciesCopyWith<$Res>(_value.pokemonSpecies, (value) {
      return _then(_value.copyWith(pokemonSpecies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpeciesImplCopyWith<$Res> implements $SpeciesCopyWith<$Res> {
  factory _$$SpeciesImplCopyWith(
          _$SpeciesImpl value, $Res Function(_$SpeciesImpl) then) =
      __$$SpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int speciesId, PokemonSpecies pokemonSpecies});

  @override
  $PokemonSpeciesCopyWith<$Res> get pokemonSpecies;
}

/// @nodoc
class __$$SpeciesImplCopyWithImpl<$Res>
    extends _$SpeciesCopyWithImpl<$Res, _$SpeciesImpl>
    implements _$$SpeciesImplCopyWith<$Res> {
  __$$SpeciesImplCopyWithImpl(
      _$SpeciesImpl _value, $Res Function(_$SpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speciesId = null,
    Object? pokemonSpecies = null,
  }) {
    return _then(_$SpeciesImpl(
      speciesId: null == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as int,
      pokemonSpecies: null == pokemonSpecies
          ? _value.pokemonSpecies
          : pokemonSpecies // ignore: cast_nullable_to_non_nullable
              as PokemonSpecies,
    ));
  }
}

/// @nodoc

class _$SpeciesImpl implements _Species {
  const _$SpeciesImpl({required this.speciesId, required this.pokemonSpecies});

  @override
  final int speciesId;
  @override
  final PokemonSpecies pokemonSpecies;

  @override
  String toString() {
    return 'Species(speciesId: $speciesId, pokemonSpecies: $pokemonSpecies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesImpl &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.pokemonSpecies, pokemonSpecies) ||
                other.pokemonSpecies == pokemonSpecies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, speciesId, pokemonSpecies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesImplCopyWith<_$SpeciesImpl> get copyWith =>
      __$$SpeciesImplCopyWithImpl<_$SpeciesImpl>(this, _$identity);
}

abstract class _Species implements Species {
  const factory _Species(
      {required final int speciesId,
      required final PokemonSpecies pokemonSpecies}) = _$SpeciesImpl;

  @override
  int get speciesId;
  @override
  PokemonSpecies get pokemonSpecies;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesImplCopyWith<_$SpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonSpecies {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isBaby => throw _privateConstructorUsedError;
  List<EvolutionDetail> get evolutionDetails =>
      throw _privateConstructorUsedError;
  List<PokemonSpecies> get evolvesTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonSpeciesCopyWith<PokemonSpecies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesCopyWith<$Res> {
  factory $PokemonSpeciesCopyWith(
          PokemonSpecies value, $Res Function(PokemonSpecies) then) =
      _$PokemonSpeciesCopyWithImpl<$Res, PokemonSpecies>;
  @useResult
  $Res call(
      {int id,
      String name,
      bool isBaby,
      List<EvolutionDetail> evolutionDetails,
      List<PokemonSpecies> evolvesTo});
}

/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res, $Val extends PokemonSpecies>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isBaby = null,
    Object? evolutionDetails = null,
    Object? evolvesTo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      evolutionDetails: null == evolutionDetails
          ? _value.evolutionDetails
          : evolutionDetails // ignore: cast_nullable_to_non_nullable
              as List<EvolutionDetail>,
      evolvesTo: null == evolvesTo
          ? _value.evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpecies>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesImplCopyWith<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  factory _$$PokemonSpeciesImplCopyWith(_$PokemonSpeciesImpl value,
          $Res Function(_$PokemonSpeciesImpl) then) =
      __$$PokemonSpeciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      bool isBaby,
      List<EvolutionDetail> evolutionDetails,
      List<PokemonSpecies> evolvesTo});
}

/// @nodoc
class __$$PokemonSpeciesImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesCopyWithImpl<$Res, _$PokemonSpeciesImpl>
    implements _$$PokemonSpeciesImplCopyWith<$Res> {
  __$$PokemonSpeciesImplCopyWithImpl(
      _$PokemonSpeciesImpl _value, $Res Function(_$PokemonSpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isBaby = null,
    Object? evolutionDetails = null,
    Object? evolvesTo = null,
  }) {
    return _then(_$PokemonSpeciesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      evolutionDetails: null == evolutionDetails
          ? _value._evolutionDetails
          : evolutionDetails // ignore: cast_nullable_to_non_nullable
              as List<EvolutionDetail>,
      evolvesTo: null == evolvesTo
          ? _value._evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<PokemonSpecies>,
    ));
  }
}

/// @nodoc

class _$PokemonSpeciesImpl implements _PokemonSpecies {
  const _$PokemonSpeciesImpl(
      {required this.id,
      required this.name,
      required this.isBaby,
      required final List<EvolutionDetail> evolutionDetails,
      required final List<PokemonSpecies> evolvesTo})
      : _evolutionDetails = evolutionDetails,
        _evolvesTo = evolvesTo;

  @override
  final int id;
  @override
  final String name;
  @override
  final bool isBaby;
  final List<EvolutionDetail> _evolutionDetails;
  @override
  List<EvolutionDetail> get evolutionDetails {
    if (_evolutionDetails is EqualUnmodifiableListView)
      return _evolutionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolutionDetails);
  }

  final List<PokemonSpecies> _evolvesTo;
  @override
  List<PokemonSpecies> get evolvesTo {
    if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolvesTo);
  }

  @override
  String toString() {
    return 'PokemonSpecies(id: $id, name: $name, isBaby: $isBaby, evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            const DeepCollectionEquality()
                .equals(other._evolutionDetails, _evolutionDetails) &&
            const DeepCollectionEquality()
                .equals(other._evolvesTo, _evolvesTo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isBaby,
      const DeepCollectionEquality().hash(_evolutionDetails),
      const DeepCollectionEquality().hash(_evolvesTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      __$$PokemonSpeciesImplCopyWithImpl<_$PokemonSpeciesImpl>(
          this, _$identity);
}

abstract class _PokemonSpecies implements PokemonSpecies {
  const factory _PokemonSpecies(
      {required final int id,
      required final String name,
      required final bool isBaby,
      required final List<EvolutionDetail> evolutionDetails,
      required final List<PokemonSpecies> evolvesTo}) = _$PokemonSpeciesImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get isBaby;
  @override
  List<EvolutionDetail> get evolutionDetails;
  @override
  List<PokemonSpecies> get evolvesTo;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesImplCopyWith<_$PokemonSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EvolutionDetail {
  int? get gender => throw _privateConstructorUsedError;
  String get trigger => throw _privateConstructorUsedError;
  int get minLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EvolutionDetailCopyWith<EvolutionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionDetailCopyWith<$Res> {
  factory $EvolutionDetailCopyWith(
          EvolutionDetail value, $Res Function(EvolutionDetail) then) =
      _$EvolutionDetailCopyWithImpl<$Res, EvolutionDetail>;
  @useResult
  $Res call({int? gender, String trigger, int minLevel});
}

/// @nodoc
class _$EvolutionDetailCopyWithImpl<$Res, $Val extends EvolutionDetail>
    implements $EvolutionDetailCopyWith<$Res> {
  _$EvolutionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? trigger = null,
    Object? minLevel = null,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String,
      minLevel: null == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EvolutionDetailApiImplCopyWith<$Res>
    implements $EvolutionDetailCopyWith<$Res> {
  factory _$$EvolutionDetailApiImplCopyWith(_$EvolutionDetailApiImpl value,
          $Res Function(_$EvolutionDetailApiImpl) then) =
      __$$EvolutionDetailApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? gender, String trigger, int minLevel});
}

/// @nodoc
class __$$EvolutionDetailApiImplCopyWithImpl<$Res>
    extends _$EvolutionDetailCopyWithImpl<$Res, _$EvolutionDetailApiImpl>
    implements _$$EvolutionDetailApiImplCopyWith<$Res> {
  __$$EvolutionDetailApiImplCopyWithImpl(_$EvolutionDetailApiImpl _value,
      $Res Function(_$EvolutionDetailApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? trigger = null,
    Object? minLevel = null,
  }) {
    return _then(_$EvolutionDetailApiImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as String,
      minLevel: null == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EvolutionDetailApiImpl implements _EvolutionDetailApi {
  const _$EvolutionDetailApiImpl(
      {this.gender, required this.trigger, required this.minLevel});

  @override
  final int? gender;
  @override
  final String trigger;
  @override
  final int minLevel;

  @override
  String toString() {
    return 'EvolutionDetail(gender: $gender, trigger: $trigger, minLevel: $minLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionDetailApiImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.trigger, trigger) || other.trigger == trigger) &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender, trigger, minLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionDetailApiImplCopyWith<_$EvolutionDetailApiImpl> get copyWith =>
      __$$EvolutionDetailApiImplCopyWithImpl<_$EvolutionDetailApiImpl>(
          this, _$identity);
}

abstract class _EvolutionDetailApi implements EvolutionDetail {
  const factory _EvolutionDetailApi(
      {final int? gender,
      required final String trigger,
      required final int minLevel}) = _$EvolutionDetailApiImpl;

  @override
  int? get gender;
  @override
  String get trigger;
  @override
  int get minLevel;
  @override
  @JsonKey(ignore: true)
  _$$EvolutionDetailApiImplCopyWith<_$EvolutionDetailApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
