// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EvolutionChainRefApiModel _$EvolutionChainRefApiModelFromJson(
    Map<String, dynamic> json) {
  return _EvolutionChainRefApiModel.fromJson(json);
}

/// @nodoc
mixin _$EvolutionChainRefApiModel {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionChainRefApiModelCopyWith<EvolutionChainRefApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionChainRefApiModelCopyWith<$Res> {
  factory $EvolutionChainRefApiModelCopyWith(EvolutionChainRefApiModel value,
          $Res Function(EvolutionChainRefApiModel) then) =
      _$EvolutionChainRefApiModelCopyWithImpl<$Res, EvolutionChainRefApiModel>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$EvolutionChainRefApiModelCopyWithImpl<$Res,
        $Val extends EvolutionChainRefApiModel>
    implements $EvolutionChainRefApiModelCopyWith<$Res> {
  _$EvolutionChainRefApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EvolutionChainRefApiModelImplCopyWith<$Res>
    implements $EvolutionChainRefApiModelCopyWith<$Res> {
  factory _$$EvolutionChainRefApiModelImplCopyWith(
          _$EvolutionChainRefApiModelImpl value,
          $Res Function(_$EvolutionChainRefApiModelImpl) then) =
      __$$EvolutionChainRefApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$EvolutionChainRefApiModelImplCopyWithImpl<$Res>
    extends _$EvolutionChainRefApiModelCopyWithImpl<$Res,
        _$EvolutionChainRefApiModelImpl>
    implements _$$EvolutionChainRefApiModelImplCopyWith<$Res> {
  __$$EvolutionChainRefApiModelImplCopyWithImpl(
      _$EvolutionChainRefApiModelImpl _value,
      $Res Function(_$EvolutionChainRefApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$EvolutionChainRefApiModelImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvolutionChainRefApiModelImpl implements _EvolutionChainRefApiModel {
  _$EvolutionChainRefApiModelImpl({required this.url});

  factory _$EvolutionChainRefApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvolutionChainRefApiModelImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'EvolutionChainRefApiModel(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionChainRefApiModelImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionChainRefApiModelImplCopyWith<_$EvolutionChainRefApiModelImpl>
      get copyWith => __$$EvolutionChainRefApiModelImplCopyWithImpl<
          _$EvolutionChainRefApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvolutionChainRefApiModelImplToJson(
      this,
    );
  }
}

abstract class _EvolutionChainRefApiModel implements EvolutionChainRefApiModel {
  factory _EvolutionChainRefApiModel({required final String url}) =
      _$EvolutionChainRefApiModelImpl;

  factory _EvolutionChainRefApiModel.fromJson(Map<String, dynamic> json) =
      _$EvolutionChainRefApiModelImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$EvolutionChainRefApiModelImplCopyWith<_$EvolutionChainRefApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PokemonSpeciesApiModel _$PokemonSpeciesApiModelFromJson(
    Map<String, dynamic> json) {
  return _PokemonSpeciesApiModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesApiModel {
  @JsonKey(name: 'evolution_chain')
  EvolutionChainRefApiModel get evolutionChain =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonSpeciesApiModelCopyWith<PokemonSpeciesApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesApiModelCopyWith<$Res> {
  factory $PokemonSpeciesApiModelCopyWith(PokemonSpeciesApiModel value,
          $Res Function(PokemonSpeciesApiModel) then) =
      _$PokemonSpeciesApiModelCopyWithImpl<$Res, PokemonSpeciesApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'evolution_chain')
      EvolutionChainRefApiModel evolutionChain});

  $EvolutionChainRefApiModelCopyWith<$Res> get evolutionChain;
}

/// @nodoc
class _$PokemonSpeciesApiModelCopyWithImpl<$Res,
        $Val extends PokemonSpeciesApiModel>
    implements $PokemonSpeciesApiModelCopyWith<$Res> {
  _$PokemonSpeciesApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionChain = null,
  }) {
    return _then(_value.copyWith(
      evolutionChain: null == evolutionChain
          ? _value.evolutionChain
          : evolutionChain // ignore: cast_nullable_to_non_nullable
              as EvolutionChainRefApiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EvolutionChainRefApiModelCopyWith<$Res> get evolutionChain {
    return $EvolutionChainRefApiModelCopyWith<$Res>(_value.evolutionChain,
        (value) {
      return _then(_value.copyWith(evolutionChain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesApiModelImplCopyWith<$Res>
    implements $PokemonSpeciesApiModelCopyWith<$Res> {
  factory _$$PokemonSpeciesApiModelImplCopyWith(
          _$PokemonSpeciesApiModelImpl value,
          $Res Function(_$PokemonSpeciesApiModelImpl) then) =
      __$$PokemonSpeciesApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'evolution_chain')
      EvolutionChainRefApiModel evolutionChain});

  @override
  $EvolutionChainRefApiModelCopyWith<$Res> get evolutionChain;
}

/// @nodoc
class __$$PokemonSpeciesApiModelImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesApiModelCopyWithImpl<$Res,
        _$PokemonSpeciesApiModelImpl>
    implements _$$PokemonSpeciesApiModelImplCopyWith<$Res> {
  __$$PokemonSpeciesApiModelImplCopyWithImpl(
      _$PokemonSpeciesApiModelImpl _value,
      $Res Function(_$PokemonSpeciesApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionChain = null,
  }) {
    return _then(_$PokemonSpeciesApiModelImpl(
      evolutionChain: null == evolutionChain
          ? _value.evolutionChain
          : evolutionChain // ignore: cast_nullable_to_non_nullable
              as EvolutionChainRefApiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesApiModelImpl implements _PokemonSpeciesApiModel {
  _$PokemonSpeciesApiModelImpl(
      {@JsonKey(name: 'evolution_chain') required this.evolutionChain});

  factory _$PokemonSpeciesApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesApiModelImplFromJson(json);

  @override
  @JsonKey(name: 'evolution_chain')
  final EvolutionChainRefApiModel evolutionChain;

  @override
  String toString() {
    return 'PokemonSpeciesApiModel(evolutionChain: $evolutionChain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesApiModelImpl &&
            (identical(other.evolutionChain, evolutionChain) ||
                other.evolutionChain == evolutionChain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, evolutionChain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesApiModelImplCopyWith<_$PokemonSpeciesApiModelImpl>
      get copyWith => __$$PokemonSpeciesApiModelImplCopyWithImpl<
          _$PokemonSpeciesApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesApiModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesApiModel implements PokemonSpeciesApiModel {
  factory _PokemonSpeciesApiModel(
          {@JsonKey(name: 'evolution_chain')
          required final EvolutionChainRefApiModel evolutionChain}) =
      _$PokemonSpeciesApiModelImpl;

  factory _PokemonSpeciesApiModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesApiModelImpl.fromJson;

  @override
  @JsonKey(name: 'evolution_chain')
  EvolutionChainRefApiModel get evolutionChain;
  @override
  @JsonKey(ignore: true)
  _$$PokemonSpeciesApiModelImplCopyWith<_$PokemonSpeciesApiModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
