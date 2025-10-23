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

EvolutionChainApiModel _$EvolutionChainApiModelFromJson(
    Map<String, dynamic> json) {
  return _EvolutionChain.fromJson(json);
}

/// @nodoc
mixin _$EvolutionChainApiModel {
  @JsonKey(name: 'baby_trigger_item')
  dynamic get babyTriggerItem => throw _privateConstructorUsedError;
  ChainApiModel get chain => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionChainApiModelCopyWith<EvolutionChainApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionChainApiModelCopyWith<$Res> {
  factory $EvolutionChainApiModelCopyWith(EvolutionChainApiModel value,
          $Res Function(EvolutionChainApiModel) then) =
      _$EvolutionChainApiModelCopyWithImpl<$Res, EvolutionChainApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'baby_trigger_item') dynamic babyTriggerItem,
      ChainApiModel chain,
      int id});

  $ChainApiModelCopyWith<$Res> get chain;
}

/// @nodoc
class _$EvolutionChainApiModelCopyWithImpl<$Res,
        $Val extends EvolutionChainApiModel>
    implements $EvolutionChainApiModelCopyWith<$Res> {
  _$EvolutionChainApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? babyTriggerItem = freezed,
    Object? chain = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      babyTriggerItem: freezed == babyTriggerItem
          ? _value.babyTriggerItem
          : babyTriggerItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainApiModel,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChainApiModelCopyWith<$Res> get chain {
    return $ChainApiModelCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvolutionChainImplCopyWith<$Res>
    implements $EvolutionChainApiModelCopyWith<$Res> {
  factory _$$EvolutionChainImplCopyWith(_$EvolutionChainImpl value,
          $Res Function(_$EvolutionChainImpl) then) =
      __$$EvolutionChainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'baby_trigger_item') dynamic babyTriggerItem,
      ChainApiModel chain,
      int id});

  @override
  $ChainApiModelCopyWith<$Res> get chain;
}

/// @nodoc
class __$$EvolutionChainImplCopyWithImpl<$Res>
    extends _$EvolutionChainApiModelCopyWithImpl<$Res, _$EvolutionChainImpl>
    implements _$$EvolutionChainImplCopyWith<$Res> {
  __$$EvolutionChainImplCopyWithImpl(
      _$EvolutionChainImpl _value, $Res Function(_$EvolutionChainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? babyTriggerItem = freezed,
    Object? chain = null,
    Object? id = null,
  }) {
    return _then(_$EvolutionChainImpl(
      babyTriggerItem: freezed == babyTriggerItem
          ? _value.babyTriggerItem
          : babyTriggerItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chain: null == chain
          ? _value.chain
          : chain // ignore: cast_nullable_to_non_nullable
              as ChainApiModel,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvolutionChainImpl implements _EvolutionChain {
  const _$EvolutionChainImpl(
      {@JsonKey(name: 'baby_trigger_item') this.babyTriggerItem,
      required this.chain,
      required this.id});

  factory _$EvolutionChainImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvolutionChainImplFromJson(json);

  @override
  @JsonKey(name: 'baby_trigger_item')
  final dynamic babyTriggerItem;
  @override
  final ChainApiModel chain;
  @override
  final int id;

  @override
  String toString() {
    return 'EvolutionChainApiModel(babyTriggerItem: $babyTriggerItem, chain: $chain, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionChainImpl &&
            const DeepCollectionEquality()
                .equals(other.babyTriggerItem, babyTriggerItem) &&
            (identical(other.chain, chain) || other.chain == chain) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(babyTriggerItem), chain, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionChainImplCopyWith<_$EvolutionChainImpl> get copyWith =>
      __$$EvolutionChainImplCopyWithImpl<_$EvolutionChainImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvolutionChainImplToJson(
      this,
    );
  }
}

abstract class _EvolutionChain implements EvolutionChainApiModel {
  const factory _EvolutionChain(
      {@JsonKey(name: 'baby_trigger_item') final dynamic babyTriggerItem,
      required final ChainApiModel chain,
      required final int id}) = _$EvolutionChainImpl;

  factory _EvolutionChain.fromJson(Map<String, dynamic> json) =
      _$EvolutionChainImpl.fromJson;

  @override
  @JsonKey(name: 'baby_trigger_item')
  dynamic get babyTriggerItem;
  @override
  ChainApiModel get chain;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$EvolutionChainImplCopyWith<_$EvolutionChainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChainApiModel _$ChainApiModelFromJson(Map<String, dynamic> json) {
  return _ChainApiModel.fromJson(json);
}

/// @nodoc
mixin _$ChainApiModel {
  @JsonKey(name: 'evolution_details')
  List<EvolutionDetailApi> get evolutionDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'evolves_to')
  List<ChainApiModel> get evolvesTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_baby')
  bool get isBaby => throw _privateConstructorUsedError;
  SpeciesApiModel get species => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChainApiModelCopyWith<ChainApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChainApiModelCopyWith<$Res> {
  factory $ChainApiModelCopyWith(
          ChainApiModel value, $Res Function(ChainApiModel) then) =
      _$ChainApiModelCopyWithImpl<$Res, ChainApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'evolution_details')
      List<EvolutionDetailApi> evolutionDetails,
      @JsonKey(name: 'evolves_to') List<ChainApiModel> evolvesTo,
      @JsonKey(name: 'is_baby') bool isBaby,
      SpeciesApiModel species});

  $SpeciesApiModelCopyWith<$Res> get species;
}

/// @nodoc
class _$ChainApiModelCopyWithImpl<$Res, $Val extends ChainApiModel>
    implements $ChainApiModelCopyWith<$Res> {
  _$ChainApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionDetails = null,
    Object? evolvesTo = null,
    Object? isBaby = null,
    Object? species = null,
  }) {
    return _then(_value.copyWith(
      evolutionDetails: null == evolutionDetails
          ? _value.evolutionDetails
          : evolutionDetails // ignore: cast_nullable_to_non_nullable
              as List<EvolutionDetailApi>,
      evolvesTo: null == evolvesTo
          ? _value.evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<ChainApiModel>,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesApiModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesApiModelCopyWith<$Res> get species {
    return $SpeciesApiModelCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChainApiModelImplCopyWith<$Res>
    implements $ChainApiModelCopyWith<$Res> {
  factory _$$ChainApiModelImplCopyWith(
          _$ChainApiModelImpl value, $Res Function(_$ChainApiModelImpl) then) =
      __$$ChainApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'evolution_details')
      List<EvolutionDetailApi> evolutionDetails,
      @JsonKey(name: 'evolves_to') List<ChainApiModel> evolvesTo,
      @JsonKey(name: 'is_baby') bool isBaby,
      SpeciesApiModel species});

  @override
  $SpeciesApiModelCopyWith<$Res> get species;
}

/// @nodoc
class __$$ChainApiModelImplCopyWithImpl<$Res>
    extends _$ChainApiModelCopyWithImpl<$Res, _$ChainApiModelImpl>
    implements _$$ChainApiModelImplCopyWith<$Res> {
  __$$ChainApiModelImplCopyWithImpl(
      _$ChainApiModelImpl _value, $Res Function(_$ChainApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? evolutionDetails = null,
    Object? evolvesTo = null,
    Object? isBaby = null,
    Object? species = null,
  }) {
    return _then(_$ChainApiModelImpl(
      evolutionDetails: null == evolutionDetails
          ? _value._evolutionDetails
          : evolutionDetails // ignore: cast_nullable_to_non_nullable
              as List<EvolutionDetailApi>,
      evolvesTo: null == evolvesTo
          ? _value._evolvesTo
          : evolvesTo // ignore: cast_nullable_to_non_nullable
              as List<ChainApiModel>,
      isBaby: null == isBaby
          ? _value.isBaby
          : isBaby // ignore: cast_nullable_to_non_nullable
              as bool,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesApiModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChainApiModelImpl implements _ChainApiModel {
  const _$ChainApiModelImpl(
      {@JsonKey(name: 'evolution_details')
      required final List<EvolutionDetailApi> evolutionDetails,
      @JsonKey(name: 'evolves_to') required final List<ChainApiModel> evolvesTo,
      @JsonKey(name: 'is_baby') required this.isBaby,
      required this.species})
      : _evolutionDetails = evolutionDetails,
        _evolvesTo = evolvesTo;

  factory _$ChainApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChainApiModelImplFromJson(json);

  final List<EvolutionDetailApi> _evolutionDetails;
  @override
  @JsonKey(name: 'evolution_details')
  List<EvolutionDetailApi> get evolutionDetails {
    if (_evolutionDetails is EqualUnmodifiableListView)
      return _evolutionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolutionDetails);
  }

  final List<ChainApiModel> _evolvesTo;
  @override
  @JsonKey(name: 'evolves_to')
  List<ChainApiModel> get evolvesTo {
    if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolvesTo);
  }

  @override
  @JsonKey(name: 'is_baby')
  final bool isBaby;
  @override
  final SpeciesApiModel species;

  @override
  String toString() {
    return 'ChainApiModel(evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo, isBaby: $isBaby, species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChainApiModelImpl &&
            const DeepCollectionEquality()
                .equals(other._evolutionDetails, _evolutionDetails) &&
            const DeepCollectionEquality()
                .equals(other._evolvesTo, _evolvesTo) &&
            (identical(other.isBaby, isBaby) || other.isBaby == isBaby) &&
            (identical(other.species, species) || other.species == species));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_evolutionDetails),
      const DeepCollectionEquality().hash(_evolvesTo),
      isBaby,
      species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChainApiModelImplCopyWith<_$ChainApiModelImpl> get copyWith =>
      __$$ChainApiModelImplCopyWithImpl<_$ChainApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChainApiModelImplToJson(
      this,
    );
  }
}

abstract class _ChainApiModel implements ChainApiModel {
  const factory _ChainApiModel(
      {@JsonKey(name: 'evolution_details')
      required final List<EvolutionDetailApi> evolutionDetails,
      @JsonKey(name: 'evolves_to') required final List<ChainApiModel> evolvesTo,
      @JsonKey(name: 'is_baby') required final bool isBaby,
      required final SpeciesApiModel species}) = _$ChainApiModelImpl;

  factory _ChainApiModel.fromJson(Map<String, dynamic> json) =
      _$ChainApiModelImpl.fromJson;

  @override
  @JsonKey(name: 'evolution_details')
  List<EvolutionDetailApi> get evolutionDetails;
  @override
  @JsonKey(name: 'evolves_to')
  List<ChainApiModel> get evolvesTo;
  @override
  @JsonKey(name: 'is_baby')
  bool get isBaby;
  @override
  SpeciesApiModel get species;
  @override
  @JsonKey(ignore: true)
  _$$ChainApiModelImplCopyWith<_$ChainApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EvolutionDetailApi _$EvolutionDetailApiFromJson(Map<String, dynamic> json) {
  return _EvolutionDetailApi.fromJson(json);
}

/// @nodoc
mixin _$EvolutionDetailApi {
  int? get gender => throw _privateConstructorUsedError;
  dynamic get heldItem => throw _privateConstructorUsedError;
  dynamic get item => throw _privateConstructorUsedError;
  dynamic get knownMove => throw _privateConstructorUsedError;
  dynamic get knownMoveType => throw _privateConstructorUsedError;
  dynamic get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_affection')
  int? get minAffection => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_beauty')
  int? get minBeauty => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_happiness')
  int? get minHappiness => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_level')
  int? get minLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'needs_overworld_rain')
  bool get needsOverworldRain => throw _privateConstructorUsedError;
  dynamic get partySpecies => throw _privateConstructorUsedError;
  dynamic get partyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_physical_stats')
  dynamic get relativePhysicalStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_of_day')
  String get timeOfDay => throw _privateConstructorUsedError;
  dynamic get tradeSpecies => throw _privateConstructorUsedError;
  TriggerApiModel get trigger => throw _privateConstructorUsedError;
  @JsonKey(name: 'turn_upside_down')
  bool get turnUpsideDown => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionDetailApiCopyWith<EvolutionDetailApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionDetailApiCopyWith<$Res> {
  factory $EvolutionDetailApiCopyWith(
          EvolutionDetailApi value, $Res Function(EvolutionDetailApi) then) =
      _$EvolutionDetailApiCopyWithImpl<$Res, EvolutionDetailApi>;
  @useResult
  $Res call(
      {int? gender,
      dynamic heldItem,
      dynamic item,
      dynamic knownMove,
      dynamic knownMoveType,
      dynamic location,
      @JsonKey(name: 'min_affection') int? minAffection,
      @JsonKey(name: 'min_beauty') int? minBeauty,
      @JsonKey(name: 'min_happiness') int? minHappiness,
      @JsonKey(name: 'min_level') int? minLevel,
      @JsonKey(name: 'needs_overworld_rain') bool needsOverworldRain,
      dynamic partySpecies,
      dynamic partyType,
      @JsonKey(name: 'relative_physical_stats') dynamic relativePhysicalStats,
      @JsonKey(name: 'time_of_day') String timeOfDay,
      dynamic tradeSpecies,
      TriggerApiModel trigger,
      @JsonKey(name: 'turn_upside_down') bool turnUpsideDown});

  $TriggerApiModelCopyWith<$Res> get trigger;
}

/// @nodoc
class _$EvolutionDetailApiCopyWithImpl<$Res, $Val extends EvolutionDetailApi>
    implements $EvolutionDetailApiCopyWith<$Res> {
  _$EvolutionDetailApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? heldItem = freezed,
    Object? item = freezed,
    Object? knownMove = freezed,
    Object? knownMoveType = freezed,
    Object? location = freezed,
    Object? minAffection = freezed,
    Object? minBeauty = freezed,
    Object? minHappiness = freezed,
    Object? minLevel = freezed,
    Object? needsOverworldRain = null,
    Object? partySpecies = freezed,
    Object? partyType = freezed,
    Object? relativePhysicalStats = freezed,
    Object? timeOfDay = null,
    Object? tradeSpecies = freezed,
    Object? trigger = null,
    Object? turnUpsideDown = null,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      heldItem: freezed == heldItem
          ? _value.heldItem
          : heldItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as dynamic,
      knownMove: freezed == knownMove
          ? _value.knownMove
          : knownMove // ignore: cast_nullable_to_non_nullable
              as dynamic,
      knownMoveType: freezed == knownMoveType
          ? _value.knownMoveType
          : knownMoveType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minAffection: freezed == minAffection
          ? _value.minAffection
          : minAffection // ignore: cast_nullable_to_non_nullable
              as int?,
      minBeauty: freezed == minBeauty
          ? _value.minBeauty
          : minBeauty // ignore: cast_nullable_to_non_nullable
              as int?,
      minHappiness: freezed == minHappiness
          ? _value.minHappiness
          : minHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      minLevel: freezed == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      needsOverworldRain: null == needsOverworldRain
          ? _value.needsOverworldRain
          : needsOverworldRain // ignore: cast_nullable_to_non_nullable
              as bool,
      partySpecies: freezed == partySpecies
          ? _value.partySpecies
          : partySpecies // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partyType: freezed == partyType
          ? _value.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      relativePhysicalStats: freezed == relativePhysicalStats
          ? _value.relativePhysicalStats
          : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timeOfDay: null == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      tradeSpecies: freezed == tradeSpecies
          ? _value.tradeSpecies
          : tradeSpecies // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as TriggerApiModel,
      turnUpsideDown: null == turnUpsideDown
          ? _value.turnUpsideDown
          : turnUpsideDown // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TriggerApiModelCopyWith<$Res> get trigger {
    return $TriggerApiModelCopyWith<$Res>(_value.trigger, (value) {
      return _then(_value.copyWith(trigger: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvolutionDetailApiImplCopyWith<$Res>
    implements $EvolutionDetailApiCopyWith<$Res> {
  factory _$$EvolutionDetailApiImplCopyWith(_$EvolutionDetailApiImpl value,
          $Res Function(_$EvolutionDetailApiImpl) then) =
      __$$EvolutionDetailApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? gender,
      dynamic heldItem,
      dynamic item,
      dynamic knownMove,
      dynamic knownMoveType,
      dynamic location,
      @JsonKey(name: 'min_affection') int? minAffection,
      @JsonKey(name: 'min_beauty') int? minBeauty,
      @JsonKey(name: 'min_happiness') int? minHappiness,
      @JsonKey(name: 'min_level') int? minLevel,
      @JsonKey(name: 'needs_overworld_rain') bool needsOverworldRain,
      dynamic partySpecies,
      dynamic partyType,
      @JsonKey(name: 'relative_physical_stats') dynamic relativePhysicalStats,
      @JsonKey(name: 'time_of_day') String timeOfDay,
      dynamic tradeSpecies,
      TriggerApiModel trigger,
      @JsonKey(name: 'turn_upside_down') bool turnUpsideDown});

  @override
  $TriggerApiModelCopyWith<$Res> get trigger;
}

/// @nodoc
class __$$EvolutionDetailApiImplCopyWithImpl<$Res>
    extends _$EvolutionDetailApiCopyWithImpl<$Res, _$EvolutionDetailApiImpl>
    implements _$$EvolutionDetailApiImplCopyWith<$Res> {
  __$$EvolutionDetailApiImplCopyWithImpl(_$EvolutionDetailApiImpl _value,
      $Res Function(_$EvolutionDetailApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? heldItem = freezed,
    Object? item = freezed,
    Object? knownMove = freezed,
    Object? knownMoveType = freezed,
    Object? location = freezed,
    Object? minAffection = freezed,
    Object? minBeauty = freezed,
    Object? minHappiness = freezed,
    Object? minLevel = freezed,
    Object? needsOverworldRain = null,
    Object? partySpecies = freezed,
    Object? partyType = freezed,
    Object? relativePhysicalStats = freezed,
    Object? timeOfDay = null,
    Object? tradeSpecies = freezed,
    Object? trigger = null,
    Object? turnUpsideDown = null,
  }) {
    return _then(_$EvolutionDetailApiImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      heldItem: freezed == heldItem
          ? _value.heldItem
          : heldItem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as dynamic,
      knownMove: freezed == knownMove
          ? _value.knownMove
          : knownMove // ignore: cast_nullable_to_non_nullable
              as dynamic,
      knownMoveType: freezed == knownMoveType
          ? _value.knownMoveType
          : knownMoveType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minAffection: freezed == minAffection
          ? _value.minAffection
          : minAffection // ignore: cast_nullable_to_non_nullable
              as int?,
      minBeauty: freezed == minBeauty
          ? _value.minBeauty
          : minBeauty // ignore: cast_nullable_to_non_nullable
              as int?,
      minHappiness: freezed == minHappiness
          ? _value.minHappiness
          : minHappiness // ignore: cast_nullable_to_non_nullable
              as int?,
      minLevel: freezed == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      needsOverworldRain: null == needsOverworldRain
          ? _value.needsOverworldRain
          : needsOverworldRain // ignore: cast_nullable_to_non_nullable
              as bool,
      partySpecies: freezed == partySpecies
          ? _value.partySpecies
          : partySpecies // ignore: cast_nullable_to_non_nullable
              as dynamic,
      partyType: freezed == partyType
          ? _value.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      relativePhysicalStats: freezed == relativePhysicalStats
          ? _value.relativePhysicalStats
          : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timeOfDay: null == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      tradeSpecies: freezed == tradeSpecies
          ? _value.tradeSpecies
          : tradeSpecies // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trigger: null == trigger
          ? _value.trigger
          : trigger // ignore: cast_nullable_to_non_nullable
              as TriggerApiModel,
      turnUpsideDown: null == turnUpsideDown
          ? _value.turnUpsideDown
          : turnUpsideDown // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvolutionDetailApiImpl implements _EvolutionDetailApi {
  const _$EvolutionDetailApiImpl(
      {this.gender,
      this.heldItem,
      this.item,
      this.knownMove,
      this.knownMoveType,
      this.location,
      @JsonKey(name: 'min_affection') this.minAffection,
      @JsonKey(name: 'min_beauty') this.minBeauty,
      @JsonKey(name: 'min_happiness') this.minHappiness,
      @JsonKey(name: 'min_level') this.minLevel,
      @JsonKey(name: 'needs_overworld_rain') required this.needsOverworldRain,
      this.partySpecies,
      this.partyType,
      @JsonKey(name: 'relative_physical_stats') this.relativePhysicalStats,
      @JsonKey(name: 'time_of_day') required this.timeOfDay,
      this.tradeSpecies,
      required this.trigger,
      @JsonKey(name: 'turn_upside_down') required this.turnUpsideDown});

  factory _$EvolutionDetailApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvolutionDetailApiImplFromJson(json);

  @override
  final int? gender;
  @override
  final dynamic heldItem;
  @override
  final dynamic item;
  @override
  final dynamic knownMove;
  @override
  final dynamic knownMoveType;
  @override
  final dynamic location;
  @override
  @JsonKey(name: 'min_affection')
  final int? minAffection;
  @override
  @JsonKey(name: 'min_beauty')
  final int? minBeauty;
  @override
  @JsonKey(name: 'min_happiness')
  final int? minHappiness;
  @override
  @JsonKey(name: 'min_level')
  final int? minLevel;
  @override
  @JsonKey(name: 'needs_overworld_rain')
  final bool needsOverworldRain;
  @override
  final dynamic partySpecies;
  @override
  final dynamic partyType;
  @override
  @JsonKey(name: 'relative_physical_stats')
  final dynamic relativePhysicalStats;
  @override
  @JsonKey(name: 'time_of_day')
  final String timeOfDay;
  @override
  final dynamic tradeSpecies;
  @override
  final TriggerApiModel trigger;
  @override
  @JsonKey(name: 'turn_upside_down')
  final bool turnUpsideDown;

  @override
  String toString() {
    return 'EvolutionDetailApi(gender: $gender, heldItem: $heldItem, item: $item, knownMove: $knownMove, knownMoveType: $knownMoveType, location: $location, minAffection: $minAffection, minBeauty: $minBeauty, minHappiness: $minHappiness, minLevel: $minLevel, needsOverworldRain: $needsOverworldRain, partySpecies: $partySpecies, partyType: $partyType, relativePhysicalStats: $relativePhysicalStats, timeOfDay: $timeOfDay, tradeSpecies: $tradeSpecies, trigger: $trigger, turnUpsideDown: $turnUpsideDown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvolutionDetailApiImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality().equals(other.heldItem, heldItem) &&
            const DeepCollectionEquality().equals(other.item, item) &&
            const DeepCollectionEquality().equals(other.knownMove, knownMove) &&
            const DeepCollectionEquality()
                .equals(other.knownMoveType, knownMoveType) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            (identical(other.minAffection, minAffection) ||
                other.minAffection == minAffection) &&
            (identical(other.minBeauty, minBeauty) ||
                other.minBeauty == minBeauty) &&
            (identical(other.minHappiness, minHappiness) ||
                other.minHappiness == minHappiness) &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel) &&
            (identical(other.needsOverworldRain, needsOverworldRain) ||
                other.needsOverworldRain == needsOverworldRain) &&
            const DeepCollectionEquality()
                .equals(other.partySpecies, partySpecies) &&
            const DeepCollectionEquality().equals(other.partyType, partyType) &&
            const DeepCollectionEquality()
                .equals(other.relativePhysicalStats, relativePhysicalStats) &&
            (identical(other.timeOfDay, timeOfDay) ||
                other.timeOfDay == timeOfDay) &&
            const DeepCollectionEquality()
                .equals(other.tradeSpecies, tradeSpecies) &&
            (identical(other.trigger, trigger) || other.trigger == trigger) &&
            (identical(other.turnUpsideDown, turnUpsideDown) ||
                other.turnUpsideDown == turnUpsideDown));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gender,
      const DeepCollectionEquality().hash(heldItem),
      const DeepCollectionEquality().hash(item),
      const DeepCollectionEquality().hash(knownMove),
      const DeepCollectionEquality().hash(knownMoveType),
      const DeepCollectionEquality().hash(location),
      minAffection,
      minBeauty,
      minHappiness,
      minLevel,
      needsOverworldRain,
      const DeepCollectionEquality().hash(partySpecies),
      const DeepCollectionEquality().hash(partyType),
      const DeepCollectionEquality().hash(relativePhysicalStats),
      timeOfDay,
      const DeepCollectionEquality().hash(tradeSpecies),
      trigger,
      turnUpsideDown);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvolutionDetailApiImplCopyWith<_$EvolutionDetailApiImpl> get copyWith =>
      __$$EvolutionDetailApiImplCopyWithImpl<_$EvolutionDetailApiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvolutionDetailApiImplToJson(
      this,
    );
  }
}

abstract class _EvolutionDetailApi implements EvolutionDetailApi {
  const factory _EvolutionDetailApi(
      {final int? gender,
      final dynamic heldItem,
      final dynamic item,
      final dynamic knownMove,
      final dynamic knownMoveType,
      final dynamic location,
      @JsonKey(name: 'min_affection') final int? minAffection,
      @JsonKey(name: 'min_beauty') final int? minBeauty,
      @JsonKey(name: 'min_happiness') final int? minHappiness,
      @JsonKey(name: 'min_level') final int? minLevel,
      @JsonKey(name: 'needs_overworld_rain')
      required final bool needsOverworldRain,
      final dynamic partySpecies,
      final dynamic partyType,
      @JsonKey(name: 'relative_physical_stats')
      final dynamic relativePhysicalStats,
      @JsonKey(name: 'time_of_day') required final String timeOfDay,
      final dynamic tradeSpecies,
      required final TriggerApiModel trigger,
      @JsonKey(name: 'turn_upside_down')
      required final bool turnUpsideDown}) = _$EvolutionDetailApiImpl;

  factory _EvolutionDetailApi.fromJson(Map<String, dynamic> json) =
      _$EvolutionDetailApiImpl.fromJson;

  @override
  int? get gender;
  @override
  dynamic get heldItem;
  @override
  dynamic get item;
  @override
  dynamic get knownMove;
  @override
  dynamic get knownMoveType;
  @override
  dynamic get location;
  @override
  @JsonKey(name: 'min_affection')
  int? get minAffection;
  @override
  @JsonKey(name: 'min_beauty')
  int? get minBeauty;
  @override
  @JsonKey(name: 'min_happiness')
  int? get minHappiness;
  @override
  @JsonKey(name: 'min_level')
  int? get minLevel;
  @override
  @JsonKey(name: 'needs_overworld_rain')
  bool get needsOverworldRain;
  @override
  dynamic get partySpecies;
  @override
  dynamic get partyType;
  @override
  @JsonKey(name: 'relative_physical_stats')
  dynamic get relativePhysicalStats;
  @override
  @JsonKey(name: 'time_of_day')
  String get timeOfDay;
  @override
  dynamic get tradeSpecies;
  @override
  TriggerApiModel get trigger;
  @override
  @JsonKey(name: 'turn_upside_down')
  bool get turnUpsideDown;
  @override
  @JsonKey(ignore: true)
  _$$EvolutionDetailApiImplCopyWith<_$EvolutionDetailApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeciesApiModel _$SpeciesApiModelFromJson(Map<String, dynamic> json) {
  return _SpeciesApiModel.fromJson(json);
}

/// @nodoc
mixin _$SpeciesApiModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesApiModelCopyWith<SpeciesApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesApiModelCopyWith<$Res> {
  factory $SpeciesApiModelCopyWith(
          SpeciesApiModel value, $Res Function(SpeciesApiModel) then) =
      _$SpeciesApiModelCopyWithImpl<$Res, SpeciesApiModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$SpeciesApiModelCopyWithImpl<$Res, $Val extends SpeciesApiModel>
    implements $SpeciesApiModelCopyWith<$Res> {
  _$SpeciesApiModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SpeciesApiModelImplCopyWith<$Res>
    implements $SpeciesApiModelCopyWith<$Res> {
  factory _$$SpeciesApiModelImplCopyWith(_$SpeciesApiModelImpl value,
          $Res Function(_$SpeciesApiModelImpl) then) =
      __$$SpeciesApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$SpeciesApiModelImplCopyWithImpl<$Res>
    extends _$SpeciesApiModelCopyWithImpl<$Res, _$SpeciesApiModelImpl>
    implements _$$SpeciesApiModelImplCopyWith<$Res> {
  __$$SpeciesApiModelImplCopyWithImpl(
      _$SpeciesApiModelImpl _value, $Res Function(_$SpeciesApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$SpeciesApiModelImpl(
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
class _$SpeciesApiModelImpl implements _SpeciesApiModel {
  const _$SpeciesApiModelImpl({required this.name, required this.url});

  factory _$SpeciesApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesApiModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'SpeciesApiModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesApiModelImplCopyWith<_$SpeciesApiModelImpl> get copyWith =>
      __$$SpeciesApiModelImplCopyWithImpl<_$SpeciesApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesApiModelImplToJson(
      this,
    );
  }
}

abstract class _SpeciesApiModel implements SpeciesApiModel {
  const factory _SpeciesApiModel(
      {required final String name,
      required final String url}) = _$SpeciesApiModelImpl;

  factory _SpeciesApiModel.fromJson(Map<String, dynamic> json) =
      _$SpeciesApiModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesApiModelImplCopyWith<_$SpeciesApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TriggerApiModel _$TriggerApiModelFromJson(Map<String, dynamic> json) {
  return _TriggerApiModel.fromJson(json);
}

/// @nodoc
mixin _$TriggerApiModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TriggerApiModelCopyWith<TriggerApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TriggerApiModelCopyWith<$Res> {
  factory $TriggerApiModelCopyWith(
          TriggerApiModel value, $Res Function(TriggerApiModel) then) =
      _$TriggerApiModelCopyWithImpl<$Res, TriggerApiModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TriggerApiModelCopyWithImpl<$Res, $Val extends TriggerApiModel>
    implements $TriggerApiModelCopyWith<$Res> {
  _$TriggerApiModelCopyWithImpl(this._value, this._then);

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
abstract class _$$TriggerApiModelImplCopyWith<$Res>
    implements $TriggerApiModelCopyWith<$Res> {
  factory _$$TriggerApiModelImplCopyWith(_$TriggerApiModelImpl value,
          $Res Function(_$TriggerApiModelImpl) then) =
      __$$TriggerApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$TriggerApiModelImplCopyWithImpl<$Res>
    extends _$TriggerApiModelCopyWithImpl<$Res, _$TriggerApiModelImpl>
    implements _$$TriggerApiModelImplCopyWith<$Res> {
  __$$TriggerApiModelImplCopyWithImpl(
      _$TriggerApiModelImpl _value, $Res Function(_$TriggerApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$TriggerApiModelImpl(
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
class _$TriggerApiModelImpl implements _TriggerApiModel {
  const _$TriggerApiModelImpl({required this.name, required this.url});

  factory _$TriggerApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TriggerApiModelImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TriggerApiModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerApiModelImplCopyWith<_$TriggerApiModelImpl> get copyWith =>
      __$$TriggerApiModelImplCopyWithImpl<_$TriggerApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TriggerApiModelImplToJson(
      this,
    );
  }
}

abstract class _TriggerApiModel implements TriggerApiModel {
  const factory _TriggerApiModel(
      {required final String name,
      required final String url}) = _$TriggerApiModelImpl;

  factory _TriggerApiModel.fromJson(Map<String, dynamic> json) =
      _$TriggerApiModelImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$TriggerApiModelImplCopyWith<_$TriggerApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
