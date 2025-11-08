// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetailApiModel _$PokemonDetailApiModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonApiModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetailApiModel {
  @JsonKey(name: "base_experience")
  int get baseExperience => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  Map<String, String> get sprites => throw _privateConstructorUsedError;
  List<StatsDetailApiModel> get stats => throw _privateConstructorUsedError;
  List<TypeDetailApiModel> get types => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDetailApiModelCopyWith<PokemonDetailApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailApiModelCopyWith<$Res> {
  factory $PokemonDetailApiModelCopyWith(PokemonDetailApiModel value,
          $Res Function(PokemonDetailApiModel) then) =
      _$PokemonDetailApiModelCopyWithImpl<$Res, PokemonDetailApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "base_experience") int baseExperience,
      int height,
      int id,
      String name,
      int order,
      Map<String, String> sprites,
      List<StatsDetailApiModel> stats,
      List<TypeDetailApiModel> types,
      int weight});
}

/// @nodoc
class _$PokemonDetailApiModelCopyWithImpl<$Res,
        $Val extends PokemonDetailApiModel>
    implements $PokemonDetailApiModelCopyWith<$Res> {
  _$PokemonDetailApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseExperience = null,
    Object? height = null,
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? sprites = null,
    Object? stats = null,
    Object? types = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatsDetailApiModel>,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeDetailApiModel>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonApiModelImplCopyWith<$Res>
    implements $PokemonDetailApiModelCopyWith<$Res> {
  factory _$$PokemonApiModelImplCopyWith(_$PokemonApiModelImpl value,
          $Res Function(_$PokemonApiModelImpl) then) =
      __$$PokemonApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "base_experience") int baseExperience,
      int height,
      int id,
      String name,
      int order,
      Map<String, String> sprites,
      List<StatsDetailApiModel> stats,
      List<TypeDetailApiModel> types,
      int weight});
}

/// @nodoc
class __$$PokemonApiModelImplCopyWithImpl<$Res>
    extends _$PokemonDetailApiModelCopyWithImpl<$Res, _$PokemonApiModelImpl>
    implements _$$PokemonApiModelImplCopyWith<$Res> {
  __$$PokemonApiModelImplCopyWithImpl(
      _$PokemonApiModelImpl _value, $Res Function(_$PokemonApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseExperience = null,
    Object? height = null,
    Object? id = null,
    Object? name = null,
    Object? order = null,
    Object? sprites = null,
    Object? stats = null,
    Object? types = null,
    Object? weight = null,
  }) {
    return _then(_$PokemonApiModelImpl(
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      sprites: null == sprites
          ? _value._sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      stats: null == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatsDetailApiModel>,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeDetailApiModel>,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonApiModelImpl implements _PokemonApiModel {
  _$PokemonApiModelImpl(
      {@JsonKey(name: "base_experience") required this.baseExperience,
      required this.height,
      required this.id,
      required this.name,
      required this.order,
      required final Map<String, String> sprites,
      required final List<StatsDetailApiModel> stats,
      required final List<TypeDetailApiModel> types,
      required this.weight})
      : _sprites = sprites,
        _stats = stats,
        _types = types;

  factory _$PokemonApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonApiModelImplFromJson(json);

  @override
  @JsonKey(name: "base_experience")
  final int baseExperience;
  @override
  final int height;
  @override
  final int id;
  @override
  final String name;
  @override
  final int order;
  final Map<String, String> _sprites;
  @override
  Map<String, String> get sprites {
    if (_sprites is EqualUnmodifiableMapView) return _sprites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sprites);
  }

  final List<StatsDetailApiModel> _stats;
  @override
  List<StatsDetailApiModel> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  final List<TypeDetailApiModel> _types;
  @override
  List<TypeDetailApiModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final int weight;

  @override
  String toString() {
    return 'PokemonDetailApiModel(baseExperience: $baseExperience, height: $height, id: $id, name: $name, order: $order, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonApiModelImpl &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._sprites, _sprites) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseExperience,
      height,
      id,
      name,
      order,
      const DeepCollectionEquality().hash(_sprites),
      const DeepCollectionEquality().hash(_stats),
      const DeepCollectionEquality().hash(_types),
      weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonApiModelImplCopyWith<_$PokemonApiModelImpl> get copyWith =>
      __$$PokemonApiModelImplCopyWithImpl<_$PokemonApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonApiModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonApiModel implements PokemonDetailApiModel {
  factory _PokemonApiModel(
      {@JsonKey(name: "base_experience") required final int baseExperience,
      required final int height,
      required final int id,
      required final String name,
      required final int order,
      required final Map<String, String> sprites,
      required final List<StatsDetailApiModel> stats,
      required final List<TypeDetailApiModel> types,
      required final int weight}) = _$PokemonApiModelImpl;

  factory _PokemonApiModel.fromJson(Map<String, dynamic> json) =
      _$PokemonApiModelImpl.fromJson;

  @override
  @JsonKey(name: "base_experience")
  int get baseExperience;
  @override
  int get height;
  @override
  int get id;
  @override
  String get name;
  @override
  int get order;
  @override
  Map<String, String> get sprites;
  @override
  List<StatsDetailApiModel> get stats;
  @override
  List<TypeDetailApiModel> get types;
  @override
  int get weight;
  @override
  @JsonKey(ignore: true)
  _$$PokemonApiModelImplCopyWith<_$PokemonApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatsDetailApiModel _$StatsDetailApiModelFromJson(Map<String, dynamic> json) {
  return _StatsDetailApiModel.fromJson(json);
}

/// @nodoc
mixin _$StatsDetailApiModel {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  StatApiModel get stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsDetailApiModelCopyWith<StatsDetailApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsDetailApiModelCopyWith<$Res> {
  factory $StatsDetailApiModelCopyWith(
          StatsDetailApiModel value, $Res Function(StatsDetailApiModel) then) =
      _$StatsDetailApiModelCopyWithImpl<$Res, StatsDetailApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat,
      int effort,
      StatApiModel stat});

  $StatApiModelCopyWith<$Res> get stat;
}

/// @nodoc
class _$StatsDetailApiModelCopyWithImpl<$Res, $Val extends StatsDetailApiModel>
    implements $StatsDetailApiModelCopyWith<$Res> {
  _$StatsDetailApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_value.copyWith(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatApiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatApiModelCopyWith<$Res> get stat {
    return $StatApiModelCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatsDetailApiModelImplCopyWith<$Res>
    implements $StatsDetailApiModelCopyWith<$Res> {
  factory _$$StatsDetailApiModelImplCopyWith(_$StatsDetailApiModelImpl value,
          $Res Function(_$StatsDetailApiModelImpl) then) =
      __$$StatsDetailApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'base_stat') int baseStat,
      int effort,
      StatApiModel stat});

  @override
  $StatApiModelCopyWith<$Res> get stat;
}

/// @nodoc
class __$$StatsDetailApiModelImplCopyWithImpl<$Res>
    extends _$StatsDetailApiModelCopyWithImpl<$Res, _$StatsDetailApiModelImpl>
    implements _$$StatsDetailApiModelImplCopyWith<$Res> {
  __$$StatsDetailApiModelImplCopyWithImpl(_$StatsDetailApiModelImpl _value,
      $Res Function(_$StatsDetailApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(_$StatsDetailApiModelImpl(
      baseStat: null == baseStat
          ? _value.baseStat
          : baseStat // ignore: cast_nullable_to_non_nullable
              as int,
      effort: null == effort
          ? _value.effort
          : effort // ignore: cast_nullable_to_non_nullable
              as int,
      stat: null == stat
          ? _value.stat
          : stat // ignore: cast_nullable_to_non_nullable
              as StatApiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsDetailApiModelImpl implements _StatsDetailApiModel {
  _$StatsDetailApiModelImpl(
      {@JsonKey(name: 'base_stat') required this.baseStat,
      required this.effort,
      required this.stat});

  factory _$StatsDetailApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsDetailApiModelImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final int effort;
  @override
  final StatApiModel stat;

  @override
  String toString() {
    return 'StatsDetailApiModel(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsDetailApiModelImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsDetailApiModelImplCopyWith<_$StatsDetailApiModelImpl> get copyWith =>
      __$$StatsDetailApiModelImplCopyWithImpl<_$StatsDetailApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsDetailApiModelImplToJson(
      this,
    );
  }
}

abstract class _StatsDetailApiModel implements StatsDetailApiModel {
  factory _StatsDetailApiModel(
      {@JsonKey(name: 'base_stat') required final int baseStat,
      required final int effort,
      required final StatApiModel stat}) = _$StatsDetailApiModelImpl;

  factory _StatsDetailApiModel.fromJson(Map<String, dynamic> json) =
      _$StatsDetailApiModelImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  int get effort;
  @override
  StatApiModel get stat;
  @override
  @JsonKey(ignore: true)
  _$$StatsDetailApiModelImplCopyWith<_$StatsDetailApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatApiModel _$StatApiModelFromJson(Map<String, dynamic> json) {
  return _StatApiModel.fromJson(json);
}

/// @nodoc
mixin _$StatApiModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatApiModelCopyWith<StatApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatApiModelCopyWith<$Res> {
  factory $StatApiModelCopyWith(
          StatApiModel value, $Res Function(StatApiModel) then) =
      _$StatApiModelCopyWithImpl<$Res, StatApiModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$StatApiModelCopyWithImpl<$Res, $Val extends StatApiModel>
    implements $StatApiModelCopyWith<$Res> {
  _$StatApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatApiModelImplCopyWith<$Res>
    implements $StatApiModelCopyWith<$Res> {
  factory _$$StatApiModelImplCopyWith(
          _$StatApiModelImpl value, $Res Function(_$StatApiModelImpl) then) =
      __$$StatApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$StatApiModelImplCopyWithImpl<$Res>
    extends _$StatApiModelCopyWithImpl<$Res, _$StatApiModelImpl>
    implements _$$StatApiModelImplCopyWith<$Res> {
  __$$StatApiModelImplCopyWithImpl(
      _$StatApiModelImpl _value, $Res Function(_$StatApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$StatApiModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatApiModelImpl implements _StatApiModel {
  _$StatApiModelImpl({required this.name, required this.url});

  factory _$StatApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatApiModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'StatApiModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatApiModelImplCopyWith<_$StatApiModelImpl> get copyWith =>
      __$$StatApiModelImplCopyWithImpl<_$StatApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatApiModelImplToJson(
      this,
    );
  }
}

abstract class _StatApiModel implements StatApiModel {
  factory _StatApiModel(
      {required final String name,
      required final String url}) = _$StatApiModelImpl;

  factory _StatApiModel.fromJson(Map<String, dynamic> json) =
      _$StatApiModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$StatApiModelImplCopyWith<_$StatApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeDetailApiModel _$TypeDetailApiModelFromJson(Map<String, dynamic> json) {
  return _TypeDetailApiModel.fromJson(json);
}

/// @nodoc
mixin _$TypeDetailApiModel {
  int get slot => throw _privateConstructorUsedError;
  TypeApiModel get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeDetailApiModelCopyWith<TypeDetailApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeDetailApiModelCopyWith<$Res> {
  factory $TypeDetailApiModelCopyWith(
          TypeDetailApiModel value, $Res Function(TypeDetailApiModel) then) =
      _$TypeDetailApiModelCopyWithImpl<$Res, TypeDetailApiModel>;
  @useResult
  $Res call({int slot, TypeApiModel type});

  $TypeApiModelCopyWith<$Res> get type;
}

/// @nodoc
class _$TypeDetailApiModelCopyWithImpl<$Res, $Val extends TypeDetailApiModel>
    implements $TypeDetailApiModelCopyWith<$Res> {
  _$TypeDetailApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeApiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeApiModelCopyWith<$Res> get type {
    return $TypeApiModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TypeDetailApiModelImplCopyWith<$Res>
    implements $TypeDetailApiModelCopyWith<$Res> {
  factory _$$TypeDetailApiModelImplCopyWith(_$TypeDetailApiModelImpl value,
          $Res Function(_$TypeDetailApiModelImpl) then) =
      __$$TypeDetailApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, TypeApiModel type});

  @override
  $TypeApiModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$TypeDetailApiModelImplCopyWithImpl<$Res>
    extends _$TypeDetailApiModelCopyWithImpl<$Res, _$TypeDetailApiModelImpl>
    implements _$$TypeDetailApiModelImplCopyWith<$Res> {
  __$$TypeDetailApiModelImplCopyWithImpl(_$TypeDetailApiModelImpl _value,
      $Res Function(_$TypeDetailApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$TypeDetailApiModelImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeApiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeDetailApiModelImpl implements _TypeDetailApiModel {
  _$TypeDetailApiModelImpl({required this.slot, required this.type});

  factory _$TypeDetailApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeDetailApiModelImplFromJson(json);

  @override
  final int slot;
  @override
  final TypeApiModel type;

  @override
  String toString() {
    return 'TypeDetailApiModel(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeDetailApiModelImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeDetailApiModelImplCopyWith<_$TypeDetailApiModelImpl> get copyWith =>
      __$$TypeDetailApiModelImplCopyWithImpl<_$TypeDetailApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeDetailApiModelImplToJson(
      this,
    );
  }
}

abstract class _TypeDetailApiModel implements TypeDetailApiModel {
  factory _TypeDetailApiModel(
      {required final int slot,
      required final TypeApiModel type}) = _$TypeDetailApiModelImpl;

  factory _TypeDetailApiModel.fromJson(Map<String, dynamic> json) =
      _$TypeDetailApiModelImpl.fromJson;

  @override
  int get slot;
  @override
  TypeApiModel get type;
  @override
  @JsonKey(ignore: true)
  _$$TypeDetailApiModelImplCopyWith<_$TypeDetailApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeApiModel _$TypeApiModelFromJson(Map<String, dynamic> json) {
  return _TypeApiModel.fromJson(json);
}

/// @nodoc
mixin _$TypeApiModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeApiModelCopyWith<TypeApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeApiModelCopyWith<$Res> {
  factory $TypeApiModelCopyWith(
          TypeApiModel value, $Res Function(TypeApiModel) then) =
      _$TypeApiModelCopyWithImpl<$Res, TypeApiModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypeApiModelCopyWithImpl<$Res, $Val extends TypeApiModel>
    implements $TypeApiModelCopyWith<$Res> {
  _$TypeApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeApiModelImplCopyWith<$Res>
    implements $TypeApiModelCopyWith<$Res> {
  factory _$$TypeApiModelImplCopyWith(
          _$TypeApiModelImpl value, $Res Function(_$TypeApiModelImpl) then) =
      __$$TypeApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$TypeApiModelImplCopyWithImpl<$Res>
    extends _$TypeApiModelCopyWithImpl<$Res, _$TypeApiModelImpl>
    implements _$$TypeApiModelImplCopyWith<$Res> {
  __$$TypeApiModelImplCopyWithImpl(
      _$TypeApiModelImpl _value, $Res Function(_$TypeApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$TypeApiModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeApiModelImpl implements _TypeApiModel {
  _$TypeApiModelImpl({required this.name, required this.url});

  factory _$TypeApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeApiModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TypeApiModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeApiModelImplCopyWith<_$TypeApiModelImpl> get copyWith =>
      __$$TypeApiModelImplCopyWithImpl<_$TypeApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeApiModelImplToJson(
      this,
    );
  }
}

abstract class _TypeApiModel implements TypeApiModel {
  factory _TypeApiModel(
      {required final String name,
      required final String url}) = _$TypeApiModelImpl;

  factory _TypeApiModel.fromJson(Map<String, dynamic> json) =
      _$TypeApiModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$TypeApiModelImplCopyWith<_$TypeApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
