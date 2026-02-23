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
/// @nodoc
mixin _$EvolutionDetail {

 int get specieId; PokemonSpecies get pokemonSpecies;
/// Create a copy of EvolutionDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionDetailCopyWith<EvolutionDetail> get copyWith => _$EvolutionDetailCopyWithImpl<EvolutionDetail>(this as EvolutionDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionDetail&&(identical(other.specieId, specieId) || other.specieId == specieId)&&(identical(other.pokemonSpecies, pokemonSpecies) || other.pokemonSpecies == pokemonSpecies));
}


@override
int get hashCode => Object.hash(runtimeType,specieId,pokemonSpecies);

@override
String toString() {
  return 'EvolutionDetail(specieId: $specieId, pokemonSpecies: $pokemonSpecies)';
}


}

/// @nodoc
abstract mixin class $EvolutionDetailCopyWith<$Res>  {
  factory $EvolutionDetailCopyWith(EvolutionDetail value, $Res Function(EvolutionDetail) _then) = _$EvolutionDetailCopyWithImpl;
@useResult
$Res call({
 int specieId, PokemonSpecies pokemonSpecies
});


$PokemonSpeciesCopyWith<$Res> get pokemonSpecies;

}
/// @nodoc
class _$EvolutionDetailCopyWithImpl<$Res>
    implements $EvolutionDetailCopyWith<$Res> {
  _$EvolutionDetailCopyWithImpl(this._self, this._then);

  final EvolutionDetail _self;
  final $Res Function(EvolutionDetail) _then;

/// Create a copy of EvolutionDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? specieId = null,Object? pokemonSpecies = null,}) {
  return _then(_self.copyWith(
specieId: null == specieId ? _self.specieId : specieId // ignore: cast_nullable_to_non_nullable
as int,pokemonSpecies: null == pokemonSpecies ? _self.pokemonSpecies : pokemonSpecies // ignore: cast_nullable_to_non_nullable
as PokemonSpecies,
  ));
}
/// Create a copy of EvolutionDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpeciesCopyWith<$Res> get pokemonSpecies {
  
  return $PokemonSpeciesCopyWith<$Res>(_self.pokemonSpecies, (value) {
    return _then(_self.copyWith(pokemonSpecies: value));
  });
}
}


/// Adds pattern-matching-related methods to [EvolutionDetail].
extension EvolutionDetailPatterns on EvolutionDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionDetail value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionDetail value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int specieId,  PokemonSpecies pokemonSpecies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionDetail() when $default != null:
return $default(_that.specieId,_that.pokemonSpecies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int specieId,  PokemonSpecies pokemonSpecies)  $default,) {final _that = this;
switch (_that) {
case _EvolutionDetail():
return $default(_that.specieId,_that.pokemonSpecies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int specieId,  PokemonSpecies pokemonSpecies)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionDetail() when $default != null:
return $default(_that.specieId,_that.pokemonSpecies);case _:
  return null;

}
}

}

/// @nodoc


class _EvolutionDetail implements EvolutionDetail {
  const _EvolutionDetail({required this.specieId, required this.pokemonSpecies});
  

@override final  int specieId;
@override final  PokemonSpecies pokemonSpecies;

/// Create a copy of EvolutionDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionDetailCopyWith<_EvolutionDetail> get copyWith => __$EvolutionDetailCopyWithImpl<_EvolutionDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionDetail&&(identical(other.specieId, specieId) || other.specieId == specieId)&&(identical(other.pokemonSpecies, pokemonSpecies) || other.pokemonSpecies == pokemonSpecies));
}


@override
int get hashCode => Object.hash(runtimeType,specieId,pokemonSpecies);

@override
String toString() {
  return 'EvolutionDetail(specieId: $specieId, pokemonSpecies: $pokemonSpecies)';
}


}

/// @nodoc
abstract mixin class _$EvolutionDetailCopyWith<$Res> implements $EvolutionDetailCopyWith<$Res> {
  factory _$EvolutionDetailCopyWith(_EvolutionDetail value, $Res Function(_EvolutionDetail) _then) = __$EvolutionDetailCopyWithImpl;
@override @useResult
$Res call({
 int specieId, PokemonSpecies pokemonSpecies
});


@override $PokemonSpeciesCopyWith<$Res> get pokemonSpecies;

}
/// @nodoc
class __$EvolutionDetailCopyWithImpl<$Res>
    implements _$EvolutionDetailCopyWith<$Res> {
  __$EvolutionDetailCopyWithImpl(this._self, this._then);

  final _EvolutionDetail _self;
  final $Res Function(_EvolutionDetail) _then;

/// Create a copy of EvolutionDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? specieId = null,Object? pokemonSpecies = null,}) {
  return _then(_EvolutionDetail(
specieId: null == specieId ? _self.specieId : specieId // ignore: cast_nullable_to_non_nullable
as int,pokemonSpecies: null == pokemonSpecies ? _self.pokemonSpecies : pokemonSpecies // ignore: cast_nullable_to_non_nullable
as PokemonSpecies,
  ));
}

/// Create a copy of EvolutionDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpeciesCopyWith<$Res> get pokemonSpecies {
  
  return $PokemonSpeciesCopyWith<$Res>(_self.pokemonSpecies, (value) {
    return _then(_self.copyWith(pokemonSpecies: value));
  });
}
}

/// @nodoc
mixin _$PokemonSpecies {

 int get id; String get name; bool get isBaby; List<TriggerDetail> get triggerDetails; List<PokemonSpecies> get evolvesTo;
/// Create a copy of PokemonSpecies
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpeciesCopyWith<PokemonSpecies> get copyWith => _$PokemonSpeciesCopyWithImpl<PokemonSpecies>(this as PokemonSpecies, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpecies&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isBaby, isBaby) || other.isBaby == isBaby)&&const DeepCollectionEquality().equals(other.triggerDetails, triggerDetails)&&const DeepCollectionEquality().equals(other.evolvesTo, evolvesTo));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,isBaby,const DeepCollectionEquality().hash(triggerDetails),const DeepCollectionEquality().hash(evolvesTo));

@override
String toString() {
  return 'PokemonSpecies(id: $id, name: $name, isBaby: $isBaby, triggerDetails: $triggerDetails, evolvesTo: $evolvesTo)';
}


}

/// @nodoc
abstract mixin class $PokemonSpeciesCopyWith<$Res>  {
  factory $PokemonSpeciesCopyWith(PokemonSpecies value, $Res Function(PokemonSpecies) _then) = _$PokemonSpeciesCopyWithImpl;
@useResult
$Res call({
 int id, String name, bool isBaby, List<TriggerDetail> triggerDetails, List<PokemonSpecies> evolvesTo
});




}
/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._self, this._then);

  final PokemonSpecies _self;
  final $Res Function(PokemonSpecies) _then;

/// Create a copy of PokemonSpecies
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isBaby = null,Object? triggerDetails = null,Object? evolvesTo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isBaby: null == isBaby ? _self.isBaby : isBaby // ignore: cast_nullable_to_non_nullable
as bool,triggerDetails: null == triggerDetails ? _self.triggerDetails : triggerDetails // ignore: cast_nullable_to_non_nullable
as List<TriggerDetail>,evolvesTo: null == evolvesTo ? _self.evolvesTo : evolvesTo // ignore: cast_nullable_to_non_nullable
as List<PokemonSpecies>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonSpecies].
extension PokemonSpeciesPatterns on PokemonSpecies {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpecies value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpecies() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpecies value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpecies():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpecies value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpecies() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  bool isBaby,  List<TriggerDetail> triggerDetails,  List<PokemonSpecies> evolvesTo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpecies() when $default != null:
return $default(_that.id,_that.name,_that.isBaby,_that.triggerDetails,_that.evolvesTo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  bool isBaby,  List<TriggerDetail> triggerDetails,  List<PokemonSpecies> evolvesTo)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpecies():
return $default(_that.id,_that.name,_that.isBaby,_that.triggerDetails,_that.evolvesTo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  bool isBaby,  List<TriggerDetail> triggerDetails,  List<PokemonSpecies> evolvesTo)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpecies() when $default != null:
return $default(_that.id,_that.name,_that.isBaby,_that.triggerDetails,_that.evolvesTo);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonSpecies implements PokemonSpecies {
  const _PokemonSpecies({required this.id, required this.name, required this.isBaby, required final  List<TriggerDetail> triggerDetails, required final  List<PokemonSpecies> evolvesTo}): _triggerDetails = triggerDetails,_evolvesTo = evolvesTo;
  

@override final  int id;
@override final  String name;
@override final  bool isBaby;
 final  List<TriggerDetail> _triggerDetails;
@override List<TriggerDetail> get triggerDetails {
  if (_triggerDetails is EqualUnmodifiableListView) return _triggerDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_triggerDetails);
}

 final  List<PokemonSpecies> _evolvesTo;
@override List<PokemonSpecies> get evolvesTo {
  if (_evolvesTo is EqualUnmodifiableListView) return _evolvesTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evolvesTo);
}


/// Create a copy of PokemonSpecies
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpeciesCopyWith<_PokemonSpecies> get copyWith => __$PokemonSpeciesCopyWithImpl<_PokemonSpecies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpecies&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isBaby, isBaby) || other.isBaby == isBaby)&&const DeepCollectionEquality().equals(other._triggerDetails, _triggerDetails)&&const DeepCollectionEquality().equals(other._evolvesTo, _evolvesTo));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,isBaby,const DeepCollectionEquality().hash(_triggerDetails),const DeepCollectionEquality().hash(_evolvesTo));

@override
String toString() {
  return 'PokemonSpecies(id: $id, name: $name, isBaby: $isBaby, triggerDetails: $triggerDetails, evolvesTo: $evolvesTo)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpeciesCopyWith<$Res> implements $PokemonSpeciesCopyWith<$Res> {
  factory _$PokemonSpeciesCopyWith(_PokemonSpecies value, $Res Function(_PokemonSpecies) _then) = __$PokemonSpeciesCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, bool isBaby, List<TriggerDetail> triggerDetails, List<PokemonSpecies> evolvesTo
});




}
/// @nodoc
class __$PokemonSpeciesCopyWithImpl<$Res>
    implements _$PokemonSpeciesCopyWith<$Res> {
  __$PokemonSpeciesCopyWithImpl(this._self, this._then);

  final _PokemonSpecies _self;
  final $Res Function(_PokemonSpecies) _then;

/// Create a copy of PokemonSpecies
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isBaby = null,Object? triggerDetails = null,Object? evolvesTo = null,}) {
  return _then(_PokemonSpecies(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isBaby: null == isBaby ? _self.isBaby : isBaby // ignore: cast_nullable_to_non_nullable
as bool,triggerDetails: null == triggerDetails ? _self._triggerDetails : triggerDetails // ignore: cast_nullable_to_non_nullable
as List<TriggerDetail>,evolvesTo: null == evolvesTo ? _self._evolvesTo : evolvesTo // ignore: cast_nullable_to_non_nullable
as List<PokemonSpecies>,
  ));
}


}

/// @nodoc
mixin _$TriggerDetail {

 int? get gender; String get trigger; int get minLevel;
/// Create a copy of TriggerDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TriggerDetailCopyWith<TriggerDetail> get copyWith => _$TriggerDetailCopyWithImpl<TriggerDetail>(this as TriggerDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriggerDetail&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel));
}


@override
int get hashCode => Object.hash(runtimeType,gender,trigger,minLevel);

@override
String toString() {
  return 'TriggerDetail(gender: $gender, trigger: $trigger, minLevel: $minLevel)';
}


}

/// @nodoc
abstract mixin class $TriggerDetailCopyWith<$Res>  {
  factory $TriggerDetailCopyWith(TriggerDetail value, $Res Function(TriggerDetail) _then) = _$TriggerDetailCopyWithImpl;
@useResult
$Res call({
 int? gender, String trigger, int minLevel
});




}
/// @nodoc
class _$TriggerDetailCopyWithImpl<$Res>
    implements $TriggerDetailCopyWith<$Res> {
  _$TriggerDetailCopyWithImpl(this._self, this._then);

  final TriggerDetail _self;
  final $Res Function(TriggerDetail) _then;

/// Create a copy of TriggerDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = freezed,Object? trigger = null,Object? minLevel = null,}) {
  return _then(_self.copyWith(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as String,minLevel: null == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TriggerDetail].
extension TriggerDetailPatterns on TriggerDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TriggerDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TriggerDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TriggerDetail value)  $default,){
final _that = this;
switch (_that) {
case _TriggerDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TriggerDetail value)?  $default,){
final _that = this;
switch (_that) {
case _TriggerDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? gender,  String trigger,  int minLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TriggerDetail() when $default != null:
return $default(_that.gender,_that.trigger,_that.minLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? gender,  String trigger,  int minLevel)  $default,) {final _that = this;
switch (_that) {
case _TriggerDetail():
return $default(_that.gender,_that.trigger,_that.minLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? gender,  String trigger,  int minLevel)?  $default,) {final _that = this;
switch (_that) {
case _TriggerDetail() when $default != null:
return $default(_that.gender,_that.trigger,_that.minLevel);case _:
  return null;

}
}

}

/// @nodoc


class _TriggerDetail implements TriggerDetail {
  const _TriggerDetail({this.gender, required this.trigger, required this.minLevel});
  

@override final  int? gender;
@override final  String trigger;
@override final  int minLevel;

/// Create a copy of TriggerDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TriggerDetailCopyWith<_TriggerDetail> get copyWith => __$TriggerDetailCopyWithImpl<_TriggerDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriggerDetail&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.trigger, trigger) || other.trigger == trigger)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel));
}


@override
int get hashCode => Object.hash(runtimeType,gender,trigger,minLevel);

@override
String toString() {
  return 'TriggerDetail(gender: $gender, trigger: $trigger, minLevel: $minLevel)';
}


}

/// @nodoc
abstract mixin class _$TriggerDetailCopyWith<$Res> implements $TriggerDetailCopyWith<$Res> {
  factory _$TriggerDetailCopyWith(_TriggerDetail value, $Res Function(_TriggerDetail) _then) = __$TriggerDetailCopyWithImpl;
@override @useResult
$Res call({
 int? gender, String trigger, int minLevel
});




}
/// @nodoc
class __$TriggerDetailCopyWithImpl<$Res>
    implements _$TriggerDetailCopyWith<$Res> {
  __$TriggerDetailCopyWithImpl(this._self, this._then);

  final _TriggerDetail _self;
  final $Res Function(_TriggerDetail) _then;

/// Create a copy of TriggerDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = freezed,Object? trigger = null,Object? minLevel = null,}) {
  return _then(_TriggerDetail(
gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int?,trigger: null == trigger ? _self.trigger : trigger // ignore: cast_nullable_to_non_nullable
as String,minLevel: null == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
