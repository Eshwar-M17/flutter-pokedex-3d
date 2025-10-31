// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PokemonModel {
  int get baseExperience => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Stat> get stats => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonModelCopyWith<PokemonDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
    PokemonDetailsModel value,
    $Res Function(PokemonDetailsModel) then,
  ) = _$PokemonModelCopyWithImpl<$Res, PokemonDetailsModel>;
  @useResult
  $Res call({
    int baseExperience,
    int height,
    int weight,
    int id,
    String name,
    List<Stat> stats,
    List<String> types,
  });
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res, $Val extends PokemonDetailsModel>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseExperience = null,
    Object? height = null,
    Object? weight = null,
    Object? id = null,
    Object? name = null,
    Object? stats = null,
    Object? types = null,
  }) {
    return _then(
      _value.copyWith(
            baseExperience: null == baseExperience
                ? _value.baseExperience
                : baseExperience // ignore: cast_nullable_to_non_nullable
                      as int,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as int,
            weight: null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as int,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as List<Stat>,
            types: null == types
                ? _value.types
                : types // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonModelImplCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$$PokemonModelImplCopyWith(
    _$PokemonModelImpl value,
    $Res Function(_$PokemonModelImpl) then,
  ) = __$$PokemonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int baseExperience,
    int height,
    int weight,
    int id,
    String name,
    List<Stat> stats,
    List<String> types,
  });
}

/// @nodoc
class __$$PokemonModelImplCopyWithImpl<$Res>
    extends _$PokemonModelCopyWithImpl<$Res, _$PokemonModelImpl>
    implements _$$PokemonModelImplCopyWith<$Res> {
  __$$PokemonModelImplCopyWithImpl(
    _$PokemonModelImpl _value,
    $Res Function(_$PokemonModelImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseExperience = null,
    Object? height = null,
    Object? weight = null,
    Object? id = null,
    Object? name = null,
    Object? stats = null,
    Object? types = null,
  }) {
    return _then(
      _$PokemonModelImpl(
        baseExperience: null == baseExperience
            ? _value.baseExperience
            : baseExperience // ignore: cast_nullable_to_non_nullable
                  as int,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        weight: null == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as int,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        stats: null == stats
            ? _value._stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as List<Stat>,
        types: null == types
            ? _value._types
            : types // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$PokemonModelImpl implements _PokemonModel {
  _$PokemonModelImpl({
    required this.baseExperience,
    required this.height,
    required this.weight,
    required this.id,
    required this.name,
    required final List<Stat> stats,
    required final List<String> types,
  }) : _stats = stats,
       _types = types;

  @override
  final int baseExperience;
  @override
  final int height;
  @override
  final int weight;
  @override
  final int id;
  @override
  final String name;
  final List<Stat> _stats;
  @override
  List<Stat> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<String> _types;
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonModel(baseExperience: $baseExperience, height: $height, weight: $weight, id: $id, name: $name, stats: $stats, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonModelImpl &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    baseExperience,
    height,
    weight,
    id,
    name,
    const DeepCollectionEquality().hash(_stats),
    const DeepCollectionEquality().hash(_types),
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      __$$PokemonModelImplCopyWithImpl<_$PokemonModelImpl>(this, _$identity);
}

abstract class _PokemonModel implements PokemonDetailsModel {
  factory _PokemonModel({
    required final int baseExperience,
    required final int height,
    required final int weight,
    required final int id,
    required final String name,
    required final List<Stat> stats,
    required final List<String> types,
  }) = _$PokemonModelImpl;

  @override
  int get baseExperience;
  @override
  int get height;
  @override
  int get weight;
  @override
  int get id;
  @override
  String get name;
  @override
  List<Stat> get stats;
  @override
  List<String> get types;
  @override
  @JsonKey(ignore: true)
  _$$PokemonModelImplCopyWith<_$PokemonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Stat {
  int get baseStat => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatCopyWith<Stat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatCopyWith<$Res> {
  factory $StatCopyWith(Stat value, $Res Function(Stat) then) =
      _$StatCopyWithImpl<$Res, Stat>;
  @useResult
  $Res call({int baseStat, String name, int effort});
}

/// @nodoc
class _$StatCopyWithImpl<$Res, $Val extends Stat>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? name = null,
    Object? effort = null,
  }) {
    return _then(
      _value.copyWith(
            baseStat: null == baseStat
                ? _value.baseStat
                : baseStat // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            effort: null == effort
                ? _value.effort
                : effort // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StatImplCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$$StatImplCopyWith(
    _$StatImpl value,
    $Res Function(_$StatImpl) then,
  ) = __$$StatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int baseStat, String name, int effort});
}

/// @nodoc
class __$$StatImplCopyWithImpl<$Res>
    extends _$StatCopyWithImpl<$Res, _$StatImpl>
    implements _$$StatImplCopyWith<$Res> {
  __$$StatImplCopyWithImpl(_$StatImpl _value, $Res Function(_$StatImpl) _then)
    : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? name = null,
    Object? effort = null,
  }) {
    return _then(
      _$StatImpl(
        baseStat: null == baseStat
            ? _value.baseStat
            : baseStat // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        effort: null == effort
            ? _value.effort
            : effort // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StatImpl implements _Stat {
  _$StatImpl({
    required this.baseStat,
    required this.name,
    required this.effort,
  });

  @override
  final int baseStat;
  @override
  final String name;
  @override
  final int effort;

  @override
  String toString() {
    return 'Stat(baseStat: $baseStat, name: $name, effort: $effort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.effort, effort) || other.effort == effort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseStat, name, effort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatImplCopyWith<_$StatImpl> get copyWith =>
      __$$StatImplCopyWithImpl<_$StatImpl>(this, _$identity);
}

abstract class _Stat implements Stat {
  factory _Stat({
    required final int baseStat,
    required final String name,
    required final int effort,
  }) = _$StatImpl;

  @override
  int get baseStat;
  @override
  String get name;
  @override
  int get effort;
  @override
  @JsonKey(ignore: true)
  _$$StatImplCopyWith<_$StatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
