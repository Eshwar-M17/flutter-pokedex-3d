// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution_chain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
EvolutionChainApiModel _$EvolutionChainApiModelFromJson(
  Map<String, dynamic> json
) {
    return _EvolutionChain.fromJson(
      json
    );
}

/// @nodoc
mixin _$EvolutionChainApiModel {

@JsonKey(name: 'baby_trigger_item') dynamic get babyTriggerItem; ChainApiModel get chain; int get id;
/// Create a copy of EvolutionChainApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionChainApiModelCopyWith<EvolutionChainApiModel> get copyWith => _$EvolutionChainApiModelCopyWithImpl<EvolutionChainApiModel>(this as EvolutionChainApiModel, _$identity);

  /// Serializes this EvolutionChainApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionChainApiModel&&const DeepCollectionEquality().equals(other.babyTriggerItem, babyTriggerItem)&&(identical(other.chain, chain) || other.chain == chain)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(babyTriggerItem),chain,id);

@override
String toString() {
  return 'EvolutionChainApiModel(babyTriggerItem: $babyTriggerItem, chain: $chain, id: $id)';
}


}

/// @nodoc
abstract mixin class $EvolutionChainApiModelCopyWith<$Res>  {
  factory $EvolutionChainApiModelCopyWith(EvolutionChainApiModel value, $Res Function(EvolutionChainApiModel) _then) = _$EvolutionChainApiModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'baby_trigger_item') dynamic babyTriggerItem, ChainApiModel chain, int id
});


$ChainApiModelCopyWith<$Res> get chain;

}
/// @nodoc
class _$EvolutionChainApiModelCopyWithImpl<$Res>
    implements $EvolutionChainApiModelCopyWith<$Res> {
  _$EvolutionChainApiModelCopyWithImpl(this._self, this._then);

  final EvolutionChainApiModel _self;
  final $Res Function(EvolutionChainApiModel) _then;

/// Create a copy of EvolutionChainApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? babyTriggerItem = freezed,Object? chain = null,Object? id = null,}) {
  return _then(_self.copyWith(
babyTriggerItem: freezed == babyTriggerItem ? _self.babyTriggerItem : babyTriggerItem // ignore: cast_nullable_to_non_nullable
as dynamic,chain: null == chain ? _self.chain : chain // ignore: cast_nullable_to_non_nullable
as ChainApiModel,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of EvolutionChainApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainApiModelCopyWith<$Res> get chain {
  
  return $ChainApiModelCopyWith<$Res>(_self.chain, (value) {
    return _then(_self.copyWith(chain: value));
  });
}
}


/// Adds pattern-matching-related methods to [EvolutionChainApiModel].
extension EvolutionChainApiModelPatterns on EvolutionChainApiModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionChain value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionChain() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionChain value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionChain():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionChain value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionChain() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'baby_trigger_item')  dynamic babyTriggerItem,  ChainApiModel chain,  int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionChain() when $default != null:
return $default(_that.babyTriggerItem,_that.chain,_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'baby_trigger_item')  dynamic babyTriggerItem,  ChainApiModel chain,  int id)  $default,) {final _that = this;
switch (_that) {
case _EvolutionChain():
return $default(_that.babyTriggerItem,_that.chain,_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'baby_trigger_item')  dynamic babyTriggerItem,  ChainApiModel chain,  int id)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionChain() when $default != null:
return $default(_that.babyTriggerItem,_that.chain,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionChain implements EvolutionChainApiModel {
  const _EvolutionChain({@JsonKey(name: 'baby_trigger_item') this.babyTriggerItem, required this.chain, required this.id});
  factory _EvolutionChain.fromJson(Map<String, dynamic> json) => _$EvolutionChainFromJson(json);

@override@JsonKey(name: 'baby_trigger_item') final  dynamic babyTriggerItem;
@override final  ChainApiModel chain;
@override final  int id;

/// Create a copy of EvolutionChainApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionChainCopyWith<_EvolutionChain> get copyWith => __$EvolutionChainCopyWithImpl<_EvolutionChain>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionChainToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChain&&const DeepCollectionEquality().equals(other.babyTriggerItem, babyTriggerItem)&&(identical(other.chain, chain) || other.chain == chain)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(babyTriggerItem),chain,id);

@override
String toString() {
  return 'EvolutionChainApiModel(babyTriggerItem: $babyTriggerItem, chain: $chain, id: $id)';
}


}

/// @nodoc
abstract mixin class _$EvolutionChainCopyWith<$Res> implements $EvolutionChainApiModelCopyWith<$Res> {
  factory _$EvolutionChainCopyWith(_EvolutionChain value, $Res Function(_EvolutionChain) _then) = __$EvolutionChainCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'baby_trigger_item') dynamic babyTriggerItem, ChainApiModel chain, int id
});


@override $ChainApiModelCopyWith<$Res> get chain;

}
/// @nodoc
class __$EvolutionChainCopyWithImpl<$Res>
    implements _$EvolutionChainCopyWith<$Res> {
  __$EvolutionChainCopyWithImpl(this._self, this._then);

  final _EvolutionChain _self;
  final $Res Function(_EvolutionChain) _then;

/// Create a copy of EvolutionChainApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? babyTriggerItem = freezed,Object? chain = null,Object? id = null,}) {
  return _then(_EvolutionChain(
babyTriggerItem: freezed == babyTriggerItem ? _self.babyTriggerItem : babyTriggerItem // ignore: cast_nullable_to_non_nullable
as dynamic,chain: null == chain ? _self.chain : chain // ignore: cast_nullable_to_non_nullable
as ChainApiModel,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of EvolutionChainApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChainApiModelCopyWith<$Res> get chain {
  
  return $ChainApiModelCopyWith<$Res>(_self.chain, (value) {
    return _then(_self.copyWith(chain: value));
  });
}
}


/// @nodoc
mixin _$ChainApiModel {

@JsonKey(name: 'evolution_details') List<EvolutionDetailApi> get evolutionDetails;@JsonKey(name: 'evolves_to') List<ChainApiModel> get evolvesTo;@JsonKey(name: 'is_baby') bool get isBaby; SpeciesApiModel get species;
/// Create a copy of ChainApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChainApiModelCopyWith<ChainApiModel> get copyWith => _$ChainApiModelCopyWithImpl<ChainApiModel>(this as ChainApiModel, _$identity);

  /// Serializes this ChainApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChainApiModel&&const DeepCollectionEquality().equals(other.evolutionDetails, evolutionDetails)&&const DeepCollectionEquality().equals(other.evolvesTo, evolvesTo)&&(identical(other.isBaby, isBaby) || other.isBaby == isBaby)&&(identical(other.species, species) || other.species == species));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(evolutionDetails),const DeepCollectionEquality().hash(evolvesTo),isBaby,species);

@override
String toString() {
  return 'ChainApiModel(evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo, isBaby: $isBaby, species: $species)';
}


}

/// @nodoc
abstract mixin class $ChainApiModelCopyWith<$Res>  {
  factory $ChainApiModelCopyWith(ChainApiModel value, $Res Function(ChainApiModel) _then) = _$ChainApiModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'evolution_details') List<EvolutionDetailApi> evolutionDetails,@JsonKey(name: 'evolves_to') List<ChainApiModel> evolvesTo,@JsonKey(name: 'is_baby') bool isBaby, SpeciesApiModel species
});


$SpeciesApiModelCopyWith<$Res> get species;

}
/// @nodoc
class _$ChainApiModelCopyWithImpl<$Res>
    implements $ChainApiModelCopyWith<$Res> {
  _$ChainApiModelCopyWithImpl(this._self, this._then);

  final ChainApiModel _self;
  final $Res Function(ChainApiModel) _then;

/// Create a copy of ChainApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? evolutionDetails = null,Object? evolvesTo = null,Object? isBaby = null,Object? species = null,}) {
  return _then(_self.copyWith(
evolutionDetails: null == evolutionDetails ? _self.evolutionDetails : evolutionDetails // ignore: cast_nullable_to_non_nullable
as List<EvolutionDetailApi>,evolvesTo: null == evolvesTo ? _self.evolvesTo : evolvesTo // ignore: cast_nullable_to_non_nullable
as List<ChainApiModel>,isBaby: null == isBaby ? _self.isBaby : isBaby // ignore: cast_nullable_to_non_nullable
as bool,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesApiModel,
  ));
}
/// Create a copy of ChainApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesApiModelCopyWith<$Res> get species {
  
  return $SpeciesApiModelCopyWith<$Res>(_self.species, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChainApiModel].
extension ChainApiModelPatterns on ChainApiModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChainApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChainApiModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChainApiModel value)  $default,){
final _that = this;
switch (_that) {
case _ChainApiModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChainApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChainApiModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'evolution_details')  List<EvolutionDetailApi> evolutionDetails, @JsonKey(name: 'evolves_to')  List<ChainApiModel> evolvesTo, @JsonKey(name: 'is_baby')  bool isBaby,  SpeciesApiModel species)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChainApiModel() when $default != null:
return $default(_that.evolutionDetails,_that.evolvesTo,_that.isBaby,_that.species);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'evolution_details')  List<EvolutionDetailApi> evolutionDetails, @JsonKey(name: 'evolves_to')  List<ChainApiModel> evolvesTo, @JsonKey(name: 'is_baby')  bool isBaby,  SpeciesApiModel species)  $default,) {final _that = this;
switch (_that) {
case _ChainApiModel():
return $default(_that.evolutionDetails,_that.evolvesTo,_that.isBaby,_that.species);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'evolution_details')  List<EvolutionDetailApi> evolutionDetails, @JsonKey(name: 'evolves_to')  List<ChainApiModel> evolvesTo, @JsonKey(name: 'is_baby')  bool isBaby,  SpeciesApiModel species)?  $default,) {final _that = this;
switch (_that) {
case _ChainApiModel() when $default != null:
return $default(_that.evolutionDetails,_that.evolvesTo,_that.isBaby,_that.species);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChainApiModel implements ChainApiModel {
  const _ChainApiModel({@JsonKey(name: 'evolution_details') required final  List<EvolutionDetailApi> evolutionDetails, @JsonKey(name: 'evolves_to') required final  List<ChainApiModel> evolvesTo, @JsonKey(name: 'is_baby') required this.isBaby, required this.species}): _evolutionDetails = evolutionDetails,_evolvesTo = evolvesTo;
  factory _ChainApiModel.fromJson(Map<String, dynamic> json) => _$ChainApiModelFromJson(json);

 final  List<EvolutionDetailApi> _evolutionDetails;
@override@JsonKey(name: 'evolution_details') List<EvolutionDetailApi> get evolutionDetails {
  if (_evolutionDetails is EqualUnmodifiableListView) return _evolutionDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evolutionDetails);
}

 final  List<ChainApiModel> _evolvesTo;
@override@JsonKey(name: 'evolves_to') List<ChainApiModel> get evolvesTo {
  if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evolvesTo);
}

@override@JsonKey(name: 'is_baby') final  bool isBaby;
@override final  SpeciesApiModel species;

/// Create a copy of ChainApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChainApiModelCopyWith<_ChainApiModel> get copyWith => __$ChainApiModelCopyWithImpl<_ChainApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChainApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChainApiModel&&const DeepCollectionEquality().equals(other._evolutionDetails, _evolutionDetails)&&const DeepCollectionEquality().equals(other._evolvesTo, _evolvesTo)&&(identical(other.isBaby, isBaby) || other.isBaby == isBaby)&&(identical(other.species, species) || other.species == species));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_evolutionDetails),const DeepCollectionEquality().hash(_evolvesTo),isBaby,species);

@override
String toString() {
  return 'ChainApiModel(evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo, isBaby: $isBaby, species: $species)';
}


}

/// @nodoc
abstract mixin class _$ChainApiModelCopyWith<$Res> implements $ChainApiModelCopyWith<$Res> {
  factory _$ChainApiModelCopyWith(_ChainApiModel value, $Res Function(_ChainApiModel) _then) = __$ChainApiModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'evolution_details') List<EvolutionDetailApi> evolutionDetails,@JsonKey(name: 'evolves_to') List<ChainApiModel> evolvesTo,@JsonKey(name: 'is_baby') bool isBaby, SpeciesApiModel species
});


@override $SpeciesApiModelCopyWith<$Res> get species;

}
/// @nodoc
class __$ChainApiModelCopyWithImpl<$Res>
    implements _$ChainApiModelCopyWith<$Res> {
  __$ChainApiModelCopyWithImpl(this._self, this._then);

  final _ChainApiModel _self;
  final $Res Function(_ChainApiModel) _then;

/// Create a copy of ChainApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? evolutionDetails = null,Object? evolvesTo = null,Object? isBaby = null,Object? species = null,}) {
  return _then(_ChainApiModel(
evolutionDetails: null == evolutionDetails ? _self._evolutionDetails : evolutionDetails // ignore: cast_nullable_to_non_nullable
as List<EvolutionDetailApi>,evolvesTo: null == evolvesTo ? _self._evolvesTo : evolvesTo // ignore: cast_nullable_to_non_nullable
as List<ChainApiModel>,isBaby: null == isBaby ? _self.isBaby : isBaby // ignore: cast_nullable_to_non_nullable
as bool,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as SpeciesApiModel,
  ));
}

/// Create a copy of ChainApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpeciesApiModelCopyWith<$Res> get species {
  
  return $SpeciesApiModelCopyWith<$Res>(_self.species, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}


/// @nodoc
mixin _$EvolutionDetailApi {

 int? get gender; dynamic get heldItem; dynamic get item; dynamic get knownMove; dynamic get knownMoveType; dynamic get location;@JsonKey(name: 'min_affection') int? get minAffection;@JsonKey(name: 'min_beauty') int? get minBeauty;@JsonKey(name: 'min_happiness') int? get minHappiness;@JsonKey(name: 'min_level') int? get minLevel;@JsonKey(name: 'needs_overworld_rain') bool get needsOverworldRain; dynamic get partySpecies; dynamic get partyType;@JsonKey(name: 'relative_physical_stats') dynamic get relativePhysicalStats;@JsonKey(name: 'time_of_day') String get timeOfDay; dynamic get tradeSpecies; TriggerApiModel get trigger;@JsonKey(name: 'turn_upside_down') bool get turnUpsideDown;
/// Create a copy of EvolutionDetailApi
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionDetailApiCopyWith<EvolutionDetailApi> get copyWith => _$EvolutionDetailApiCopyWithImpl<EvolutionDetailApi>(this as EvolutionDetailApi, _$identity);

  /// Serializes this EvolutionDetailApi to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionDetailApi&&(identical(other.gender, gender) || other.gender == gender)&&const DeepCollectionEquality().equals(other.heldItem, heldItem)&&const DeepCollectionEquality().equals(other.item, item)&&const DeepCollectionEquality().equals(other.knownMove, knownMove)&&const DeepCollectionEquality().equals(other.knownMoveType, knownMoveType)&&const DeepCollectionEquality().equals(other.location, location)&&(identical(other.minAffection, minAffection) || other.minAffection == minAffection)&&(identical(other.minBeauty, minBeauty) || other.minBeauty == minBeauty)&&(identical(other.minHappiness, minHappiness) || other.minHappiness == minHappiness)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel)&&(identical(other.needsOverworldRain, needsOverworldRain) || other.needsOverworldRain == needsOverworldRain)&&const DeepCollectionEquality().equals(other.partySpecies, partySpecies)&&const DeepCollectionEquality().equals(other.partyType, partyType)&&const DeepCollectionEquality().equals(other.relativePhysicalStats, relativePhysicalStats)&&(identical(other.timeOfDay, timeOfDay) || other.timeOfDay == timeOfDay)&&const DeepCollectionEquality().equals(other.tradeSpecies, tradeSpecies)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.turnUpsideDown, turnUpsideDown) || other.turnUpsideDown == turnUpsideDown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,const DeepCollectionEquality().hash(heldItem),const DeepCollectionEquality().hash(item),const DeepCollectionEquality().hash(knownMove),const DeepCollectionEquality().hash(knownMoveType),const DeepCollectionEquality().hash(location),minAffection,minBeauty,minHappiness,minLevel,needsOverworldRain,const DeepCollectionEquality().hash(partySpecies),const DeepCollectionEquality().hash(partyType),const DeepCollectionEquality().hash(relativePhysicalStats),timeOfDay,const DeepCollectionEquality().hash(tradeSpecies),trigger,turnUpsideDown);

@override
String toString() {
  return 'EvolutionDetailApi(gender: $gender, heldItem: $heldItem, item: $item, knownMove: $knownMove, knownMoveType: $knownMoveType, location: $location, minAffection: $minAffection, minBeauty: $minBeauty, minHappiness: $minHappiness, minLevel: $minLevel, needsOverworldRain: $needsOverworldRain, partySpecies: $partySpecies, partyType: $partyType, relativePhysicalStats: $relativePhysicalStats, timeOfDay: $timeOfDay, tradeSpecies: $tradeSpecies, trigger: $trigger, turnUpsideDown: $turnUpsideDown)';
}


}

/// @nodoc
abstract mixin class $EvolutionDetailApiCopyWith<$Res>  {
  factory $EvolutionDetailApiCopyWith(EvolutionDetailApi value, $Res Function(EvolutionDetailApi) _then) = _$EvolutionDetailApiCopyWithImpl;
@useResult
$Res call({
 int? gender, dynamic heldItem, dynamic item, dynamic knownMove, dynamic knownMoveType, dynamic location,@JsonKey(name: 'min_affection') int? minAffection,@JsonKey(name: 'min_beauty') int? minBeauty,@JsonKey(name: 'min_happiness') int? minHappiness,@JsonKey(name: 'min_level') int? minLevel,@JsonKey(name: 'needs_overworld_rain') bool needsOverworldRain, dynamic partySpecies, dynamic partyType,@JsonKey(name: 'relative_physical_stats') dynamic relativePhysicalStats,@JsonKey(name: 'time_of_day') String timeOfDay, dynamic tradeSpecies, TriggerApiModel trigger,@JsonKey(name: 'turn_upside_down') bool turnUpsideDown
});


$TriggerApiModelCopyWith<$Res> get trigger;

}
/// @nodoc
class _$EvolutionDetailApiCopyWithImpl<$Res>
    implements $EvolutionDetailApiCopyWith<$Res> {
  _$EvolutionDetailApiCopyWithImpl(this._self, this._then);

  final EvolutionDetailApi _self;
  final $Res Function(EvolutionDetailApi) _then;

/// Create a copy of EvolutionDetailApi
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = freezed,Object? heldItem = freezed,Object? item = freezed,Object? knownMove = freezed,Object? knownMoveType = freezed,Object? location = freezed,Object? minAffection = freezed,Object? minBeauty = freezed,Object? minHappiness = freezed,Object? minLevel = freezed,Object? needsOverworldRain = null,Object? partySpecies = freezed,Object? partyType = freezed,Object? relativePhysicalStats = freezed,Object? timeOfDay = null,Object? tradeSpecies = freezed,Object? trigger = null,Object? turnUpsideDown = null,}) {
  return _then(_self.copyWith(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,heldItem: freezed == heldItem ? _self.heldItem : heldItem // ignore: cast_nullable_to_non_nullable
as dynamic,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as dynamic,knownMove: freezed == knownMove ? _self.knownMove : knownMove // ignore: cast_nullable_to_non_nullable
as dynamic,knownMoveType: freezed == knownMoveType ? _self.knownMoveType : knownMoveType // ignore: cast_nullable_to_non_nullable
as dynamic,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as dynamic,minAffection: freezed == minAffection ? _self.minAffection : minAffection // ignore: cast_nullable_to_non_nullable
as int?,minBeauty: freezed == minBeauty ? _self.minBeauty : minBeauty // ignore: cast_nullable_to_non_nullable
as int?,minHappiness: freezed == minHappiness ? _self.minHappiness : minHappiness // ignore: cast_nullable_to_non_nullable
as int?,minLevel: freezed == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int?,needsOverworldRain: null == needsOverworldRain ? _self.needsOverworldRain : needsOverworldRain // ignore: cast_nullable_to_non_nullable
as bool,partySpecies: freezed == partySpecies ? _self.partySpecies : partySpecies // ignore: cast_nullable_to_non_nullable
as dynamic,partyType: freezed == partyType ? _self.partyType : partyType // ignore: cast_nullable_to_non_nullable
as dynamic,relativePhysicalStats: freezed == relativePhysicalStats ? _self.relativePhysicalStats : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
as dynamic,timeOfDay: null == timeOfDay ? _self.timeOfDay : timeOfDay // ignore: cast_nullable_to_non_nullable
as String,tradeSpecies: freezed == tradeSpecies ? _self.tradeSpecies : tradeSpecies // ignore: cast_nullable_to_non_nullable
as dynamic,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as TriggerApiModel,turnUpsideDown: null == turnUpsideDown ? _self.turnUpsideDown : turnUpsideDown // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of EvolutionDetailApi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriggerApiModelCopyWith<$Res> get trigger {
  
  return $TriggerApiModelCopyWith<$Res>(_self.trigger, (value) {
    return _then(_self.copyWith(trigger: value));
  });
}
}


/// Adds pattern-matching-related methods to [EvolutionDetailApi].
extension EvolutionDetailApiPatterns on EvolutionDetailApi {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionDetailApi value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionDetailApi() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionDetailApi value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionDetailApi():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionDetailApi value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionDetailApi() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? gender,  dynamic heldItem,  dynamic item,  dynamic knownMove,  dynamic knownMoveType,  dynamic location, @JsonKey(name: 'min_affection')  int? minAffection, @JsonKey(name: 'min_beauty')  int? minBeauty, @JsonKey(name: 'min_happiness')  int? minHappiness, @JsonKey(name: 'min_level')  int? minLevel, @JsonKey(name: 'needs_overworld_rain')  bool needsOverworldRain,  dynamic partySpecies,  dynamic partyType, @JsonKey(name: 'relative_physical_stats')  dynamic relativePhysicalStats, @JsonKey(name: 'time_of_day')  String timeOfDay,  dynamic tradeSpecies,  TriggerApiModel trigger, @JsonKey(name: 'turn_upside_down')  bool turnUpsideDown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionDetailApi() when $default != null:
return $default(_that.gender,_that.heldItem,_that.item,_that.knownMove,_that.knownMoveType,_that.location,_that.minAffection,_that.minBeauty,_that.minHappiness,_that.minLevel,_that.needsOverworldRain,_that.partySpecies,_that.partyType,_that.relativePhysicalStats,_that.timeOfDay,_that.tradeSpecies,_that.trigger,_that.turnUpsideDown);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? gender,  dynamic heldItem,  dynamic item,  dynamic knownMove,  dynamic knownMoveType,  dynamic location, @JsonKey(name: 'min_affection')  int? minAffection, @JsonKey(name: 'min_beauty')  int? minBeauty, @JsonKey(name: 'min_happiness')  int? minHappiness, @JsonKey(name: 'min_level')  int? minLevel, @JsonKey(name: 'needs_overworld_rain')  bool needsOverworldRain,  dynamic partySpecies,  dynamic partyType, @JsonKey(name: 'relative_physical_stats')  dynamic relativePhysicalStats, @JsonKey(name: 'time_of_day')  String timeOfDay,  dynamic tradeSpecies,  TriggerApiModel trigger, @JsonKey(name: 'turn_upside_down')  bool turnUpsideDown)  $default,) {final _that = this;
switch (_that) {
case _EvolutionDetailApi():
return $default(_that.gender,_that.heldItem,_that.item,_that.knownMove,_that.knownMoveType,_that.location,_that.minAffection,_that.minBeauty,_that.minHappiness,_that.minLevel,_that.needsOverworldRain,_that.partySpecies,_that.partyType,_that.relativePhysicalStats,_that.timeOfDay,_that.tradeSpecies,_that.trigger,_that.turnUpsideDown);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? gender,  dynamic heldItem,  dynamic item,  dynamic knownMove,  dynamic knownMoveType,  dynamic location, @JsonKey(name: 'min_affection')  int? minAffection, @JsonKey(name: 'min_beauty')  int? minBeauty, @JsonKey(name: 'min_happiness')  int? minHappiness, @JsonKey(name: 'min_level')  int? minLevel, @JsonKey(name: 'needs_overworld_rain')  bool needsOverworldRain,  dynamic partySpecies,  dynamic partyType, @JsonKey(name: 'relative_physical_stats')  dynamic relativePhysicalStats, @JsonKey(name: 'time_of_day')  String timeOfDay,  dynamic tradeSpecies,  TriggerApiModel trigger, @JsonKey(name: 'turn_upside_down')  bool turnUpsideDown)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionDetailApi() when $default != null:
return $default(_that.gender,_that.heldItem,_that.item,_that.knownMove,_that.knownMoveType,_that.location,_that.minAffection,_that.minBeauty,_that.minHappiness,_that.minLevel,_that.needsOverworldRain,_that.partySpecies,_that.partyType,_that.relativePhysicalStats,_that.timeOfDay,_that.tradeSpecies,_that.trigger,_that.turnUpsideDown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionDetailApi implements EvolutionDetailApi {
  const _EvolutionDetailApi({this.gender, this.heldItem, this.item, this.knownMove, this.knownMoveType, this.location, @JsonKey(name: 'min_affection') this.minAffection, @JsonKey(name: 'min_beauty') this.minBeauty, @JsonKey(name: 'min_happiness') this.minHappiness, @JsonKey(name: 'min_level') this.minLevel, @JsonKey(name: 'needs_overworld_rain') required this.needsOverworldRain, this.partySpecies, this.partyType, @JsonKey(name: 'relative_physical_stats') this.relativePhysicalStats, @JsonKey(name: 'time_of_day') required this.timeOfDay, this.tradeSpecies, required this.trigger, @JsonKey(name: 'turn_upside_down') required this.turnUpsideDown});
  factory _EvolutionDetailApi.fromJson(Map<String, dynamic> json) => _$EvolutionDetailApiFromJson(json);

@override final  int? gender;
@override final  dynamic heldItem;
@override final  dynamic item;
@override final  dynamic knownMove;
@override final  dynamic knownMoveType;
@override final  dynamic location;
@override@JsonKey(name: 'min_affection') final  int? minAffection;
@override@JsonKey(name: 'min_beauty') final  int? minBeauty;
@override@JsonKey(name: 'min_happiness') final  int? minHappiness;
@override@JsonKey(name: 'min_level') final  int? minLevel;
@override@JsonKey(name: 'needs_overworld_rain') final  bool needsOverworldRain;
@override final  dynamic partySpecies;
@override final  dynamic partyType;
@override@JsonKey(name: 'relative_physical_stats') final  dynamic relativePhysicalStats;
@override@JsonKey(name: 'time_of_day') final  String timeOfDay;
@override final  dynamic tradeSpecies;
@override final  TriggerApiModel trigger;
@override@JsonKey(name: 'turn_upside_down') final  bool turnUpsideDown;

/// Create a copy of EvolutionDetailApi
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionDetailApiCopyWith<_EvolutionDetailApi> get copyWith => __$EvolutionDetailApiCopyWithImpl<_EvolutionDetailApi>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionDetailApiToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionDetailApi&&(identical(other.gender, gender) || other.gender == gender)&&const DeepCollectionEquality().equals(other.heldItem, heldItem)&&const DeepCollectionEquality().equals(other.item, item)&&const DeepCollectionEquality().equals(other.knownMove, knownMove)&&const DeepCollectionEquality().equals(other.knownMoveType, knownMoveType)&&const DeepCollectionEquality().equals(other.location, location)&&(identical(other.minAffection, minAffection) || other.minAffection == minAffection)&&(identical(other.minBeauty, minBeauty) || other.minBeauty == minBeauty)&&(identical(other.minHappiness, minHappiness) || other.minHappiness == minHappiness)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel)&&(identical(other.needsOverworldRain, needsOverworldRain) || other.needsOverworldRain == needsOverworldRain)&&const DeepCollectionEquality().equals(other.partySpecies, partySpecies)&&const DeepCollectionEquality().equals(other.partyType, partyType)&&const DeepCollectionEquality().equals(other.relativePhysicalStats, relativePhysicalStats)&&(identical(other.timeOfDay, timeOfDay) || other.timeOfDay == timeOfDay)&&const DeepCollectionEquality().equals(other.tradeSpecies, tradeSpecies)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.turnUpsideDown, turnUpsideDown) || other.turnUpsideDown == turnUpsideDown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,const DeepCollectionEquality().hash(heldItem),const DeepCollectionEquality().hash(item),const DeepCollectionEquality().hash(knownMove),const DeepCollectionEquality().hash(knownMoveType),const DeepCollectionEquality().hash(location),minAffection,minBeauty,minHappiness,minLevel,needsOverworldRain,const DeepCollectionEquality().hash(partySpecies),const DeepCollectionEquality().hash(partyType),const DeepCollectionEquality().hash(relativePhysicalStats),timeOfDay,const DeepCollectionEquality().hash(tradeSpecies),trigger,turnUpsideDown);

@override
String toString() {
  return 'EvolutionDetailApi(gender: $gender, heldItem: $heldItem, item: $item, knownMove: $knownMove, knownMoveType: $knownMoveType, location: $location, minAffection: $minAffection, minBeauty: $minBeauty, minHappiness: $minHappiness, minLevel: $minLevel, needsOverworldRain: $needsOverworldRain, partySpecies: $partySpecies, partyType: $partyType, relativePhysicalStats: $relativePhysicalStats, timeOfDay: $timeOfDay, tradeSpecies: $tradeSpecies, trigger: $trigger, turnUpsideDown: $turnUpsideDown)';
}


}

/// @nodoc
abstract mixin class _$EvolutionDetailApiCopyWith<$Res> implements $EvolutionDetailApiCopyWith<$Res> {
  factory _$EvolutionDetailApiCopyWith(_EvolutionDetailApi value, $Res Function(_EvolutionDetailApi) _then) = __$EvolutionDetailApiCopyWithImpl;
@override @useResult
$Res call({
 int? gender, dynamic heldItem, dynamic item, dynamic knownMove, dynamic knownMoveType, dynamic location,@JsonKey(name: 'min_affection') int? minAffection,@JsonKey(name: 'min_beauty') int? minBeauty,@JsonKey(name: 'min_happiness') int? minHappiness,@JsonKey(name: 'min_level') int? minLevel,@JsonKey(name: 'needs_overworld_rain') bool needsOverworldRain, dynamic partySpecies, dynamic partyType,@JsonKey(name: 'relative_physical_stats') dynamic relativePhysicalStats,@JsonKey(name: 'time_of_day') String timeOfDay, dynamic tradeSpecies, TriggerApiModel trigger,@JsonKey(name: 'turn_upside_down') bool turnUpsideDown
});


@override $TriggerApiModelCopyWith<$Res> get trigger;

}
/// @nodoc
class __$EvolutionDetailApiCopyWithImpl<$Res>
    implements _$EvolutionDetailApiCopyWith<$Res> {
  __$EvolutionDetailApiCopyWithImpl(this._self, this._then);

  final _EvolutionDetailApi _self;
  final $Res Function(_EvolutionDetailApi) _then;

/// Create a copy of EvolutionDetailApi
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = freezed,Object? heldItem = freezed,Object? item = freezed,Object? knownMove = freezed,Object? knownMoveType = freezed,Object? location = freezed,Object? minAffection = freezed,Object? minBeauty = freezed,Object? minHappiness = freezed,Object? minLevel = freezed,Object? needsOverworldRain = null,Object? partySpecies = freezed,Object? partyType = freezed,Object? relativePhysicalStats = freezed,Object? timeOfDay = null,Object? tradeSpecies = freezed,Object? trigger = null,Object? turnUpsideDown = null,}) {
  return _then(_EvolutionDetailApi(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,heldItem: freezed == heldItem ? _self.heldItem : heldItem // ignore: cast_nullable_to_non_nullable
as dynamic,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as dynamic,knownMove: freezed == knownMove ? _self.knownMove : knownMove // ignore: cast_nullable_to_non_nullable
as dynamic,knownMoveType: freezed == knownMoveType ? _self.knownMoveType : knownMoveType // ignore: cast_nullable_to_non_nullable
as dynamic,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as dynamic,minAffection: freezed == minAffection ? _self.minAffection : minAffection // ignore: cast_nullable_to_non_nullable
as int?,minBeauty: freezed == minBeauty ? _self.minBeauty : minBeauty // ignore: cast_nullable_to_non_nullable
as int?,minHappiness: freezed == minHappiness ? _self.minHappiness : minHappiness // ignore: cast_nullable_to_non_nullable
as int?,minLevel: freezed == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int?,needsOverworldRain: null == needsOverworldRain ? _self.needsOverworldRain : needsOverworldRain // ignore: cast_nullable_to_non_nullable
as bool,partySpecies: freezed == partySpecies ? _self.partySpecies : partySpecies // ignore: cast_nullable_to_non_nullable
as dynamic,partyType: freezed == partyType ? _self.partyType : partyType // ignore: cast_nullable_to_non_nullable
as dynamic,relativePhysicalStats: freezed == relativePhysicalStats ? _self.relativePhysicalStats : relativePhysicalStats // ignore: cast_nullable_to_non_nullable
as dynamic,timeOfDay: null == timeOfDay ? _self.timeOfDay : timeOfDay // ignore: cast_nullable_to_non_nullable
as String,tradeSpecies: freezed == tradeSpecies ? _self.tradeSpecies : tradeSpecies // ignore: cast_nullable_to_non_nullable
as dynamic,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as TriggerApiModel,turnUpsideDown: null == turnUpsideDown ? _self.turnUpsideDown : turnUpsideDown // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of EvolutionDetailApi
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TriggerApiModelCopyWith<$Res> get trigger {
  
  return $TriggerApiModelCopyWith<$Res>(_self.trigger, (value) {
    return _then(_self.copyWith(trigger: value));
  });
}
}


/// @nodoc
mixin _$SpeciesApiModel {

 String get name; String get url;
/// Create a copy of SpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpeciesApiModelCopyWith<SpeciesApiModel> get copyWith => _$SpeciesApiModelCopyWithImpl<SpeciesApiModel>(this as SpeciesApiModel, _$identity);

  /// Serializes this SpeciesApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpeciesApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'SpeciesApiModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $SpeciesApiModelCopyWith<$Res>  {
  factory $SpeciesApiModelCopyWith(SpeciesApiModel value, $Res Function(SpeciesApiModel) _then) = _$SpeciesApiModelCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$SpeciesApiModelCopyWithImpl<$Res>
    implements $SpeciesApiModelCopyWith<$Res> {
  _$SpeciesApiModelCopyWithImpl(this._self, this._then);

  final SpeciesApiModel _self;
  final $Res Function(SpeciesApiModel) _then;

/// Create a copy of SpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SpeciesApiModel].
extension SpeciesApiModelPatterns on SpeciesApiModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpeciesApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpeciesApiModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpeciesApiModel value)  $default,){
final _that = this;
switch (_that) {
case _SpeciesApiModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpeciesApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpeciesApiModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpeciesApiModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _SpeciesApiModel():
return $default(_that.name,_that.url);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _SpeciesApiModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpeciesApiModel implements SpeciesApiModel {
  const _SpeciesApiModel({required this.name, required this.url});
  factory _SpeciesApiModel.fromJson(Map<String, dynamic> json) => _$SpeciesApiModelFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of SpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpeciesApiModelCopyWith<_SpeciesApiModel> get copyWith => __$SpeciesApiModelCopyWithImpl<_SpeciesApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpeciesApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpeciesApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'SpeciesApiModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$SpeciesApiModelCopyWith<$Res> implements $SpeciesApiModelCopyWith<$Res> {
  factory _$SpeciesApiModelCopyWith(_SpeciesApiModel value, $Res Function(_SpeciesApiModel) _then) = __$SpeciesApiModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$SpeciesApiModelCopyWithImpl<$Res>
    implements _$SpeciesApiModelCopyWith<$Res> {
  __$SpeciesApiModelCopyWithImpl(this._self, this._then);

  final _SpeciesApiModel _self;
  final $Res Function(_SpeciesApiModel) _then;

/// Create a copy of SpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_SpeciesApiModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TriggerApiModel {

 String get name; String get url;
/// Create a copy of TriggerApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TriggerApiModelCopyWith<TriggerApiModel> get copyWith => _$TriggerApiModelCopyWithImpl<TriggerApiModel>(this as TriggerApiModel, _$identity);

  /// Serializes this TriggerApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriggerApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'TriggerApiModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $TriggerApiModelCopyWith<$Res>  {
  factory $TriggerApiModelCopyWith(TriggerApiModel value, $Res Function(TriggerApiModel) _then) = _$TriggerApiModelCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$TriggerApiModelCopyWithImpl<$Res>
    implements $TriggerApiModelCopyWith<$Res> {
  _$TriggerApiModelCopyWithImpl(this._self, this._then);

  final TriggerApiModel _self;
  final $Res Function(TriggerApiModel) _then;

/// Create a copy of TriggerApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TriggerApiModel].
extension TriggerApiModelPatterns on TriggerApiModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TriggerApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TriggerApiModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TriggerApiModel value)  $default,){
final _that = this;
switch (_that) {
case _TriggerApiModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TriggerApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TriggerApiModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TriggerApiModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _TriggerApiModel():
return $default(_that.name,_that.url);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _TriggerApiModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TriggerApiModel implements TriggerApiModel {
  const _TriggerApiModel({required this.name, required this.url});
  factory _TriggerApiModel.fromJson(Map<String, dynamic> json) => _$TriggerApiModelFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of TriggerApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TriggerApiModelCopyWith<_TriggerApiModel> get copyWith => __$TriggerApiModelCopyWithImpl<_TriggerApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TriggerApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriggerApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'TriggerApiModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$TriggerApiModelCopyWith<$Res> implements $TriggerApiModelCopyWith<$Res> {
  factory _$TriggerApiModelCopyWith(_TriggerApiModel value, $Res Function(_TriggerApiModel) _then) = __$TriggerApiModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$TriggerApiModelCopyWithImpl<$Res>
    implements _$TriggerApiModelCopyWith<$Res> {
  __$TriggerApiModelCopyWithImpl(this._self, this._then);

  final _TriggerApiModel _self;
  final $Res Function(_TriggerApiModel) _then;

/// Create a copy of TriggerApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_TriggerApiModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
