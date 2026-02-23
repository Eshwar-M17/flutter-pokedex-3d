// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EvolutionChainRefApiModel {

 String get url;
/// Create a copy of EvolutionChainRefApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EvolutionChainRefApiModelCopyWith<EvolutionChainRefApiModel> get copyWith => _$EvolutionChainRefApiModelCopyWithImpl<EvolutionChainRefApiModel>(this as EvolutionChainRefApiModel, _$identity);

  /// Serializes this EvolutionChainRefApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EvolutionChainRefApiModel&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'EvolutionChainRefApiModel(url: $url)';
}


}

/// @nodoc
abstract mixin class $EvolutionChainRefApiModelCopyWith<$Res>  {
  factory $EvolutionChainRefApiModelCopyWith(EvolutionChainRefApiModel value, $Res Function(EvolutionChainRefApiModel) _then) = _$EvolutionChainRefApiModelCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$EvolutionChainRefApiModelCopyWithImpl<$Res>
    implements $EvolutionChainRefApiModelCopyWith<$Res> {
  _$EvolutionChainRefApiModelCopyWithImpl(this._self, this._then);

  final EvolutionChainRefApiModel _self;
  final $Res Function(EvolutionChainRefApiModel) _then;

/// Create a copy of EvolutionChainRefApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EvolutionChainRefApiModel].
extension EvolutionChainRefApiModelPatterns on EvolutionChainRefApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EvolutionChainRefApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EvolutionChainRefApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EvolutionChainRefApiModel value)  $default,){
final _that = this;
switch (_that) {
case _EvolutionChainRefApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EvolutionChainRefApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _EvolutionChainRefApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EvolutionChainRefApiModel() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url)  $default,) {final _that = this;
switch (_that) {
case _EvolutionChainRefApiModel():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url)?  $default,) {final _that = this;
switch (_that) {
case _EvolutionChainRefApiModel() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EvolutionChainRefApiModel implements EvolutionChainRefApiModel {
   _EvolutionChainRefApiModel({required this.url});
  factory _EvolutionChainRefApiModel.fromJson(Map<String, dynamic> json) => _$EvolutionChainRefApiModelFromJson(json);

@override final  String url;

/// Create a copy of EvolutionChainRefApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EvolutionChainRefApiModelCopyWith<_EvolutionChainRefApiModel> get copyWith => __$EvolutionChainRefApiModelCopyWithImpl<_EvolutionChainRefApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EvolutionChainRefApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EvolutionChainRefApiModel&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url);

@override
String toString() {
  return 'EvolutionChainRefApiModel(url: $url)';
}


}

/// @nodoc
abstract mixin class _$EvolutionChainRefApiModelCopyWith<$Res> implements $EvolutionChainRefApiModelCopyWith<$Res> {
  factory _$EvolutionChainRefApiModelCopyWith(_EvolutionChainRefApiModel value, $Res Function(_EvolutionChainRefApiModel) _then) = __$EvolutionChainRefApiModelCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$EvolutionChainRefApiModelCopyWithImpl<$Res>
    implements _$EvolutionChainRefApiModelCopyWith<$Res> {
  __$EvolutionChainRefApiModelCopyWithImpl(this._self, this._then);

  final _EvolutionChainRefApiModel _self;
  final $Res Function(_EvolutionChainRefApiModel) _then;

/// Create a copy of EvolutionChainRefApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_EvolutionChainRefApiModel(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PokemonSpeciesApiModel {

@JsonKey(name: 'evolution_chain') EvolutionChainRefApiModel get evolutionChain;
/// Create a copy of PokemonSpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpeciesApiModelCopyWith<PokemonSpeciesApiModel> get copyWith => _$PokemonSpeciesApiModelCopyWithImpl<PokemonSpeciesApiModel>(this as PokemonSpeciesApiModel, _$identity);

  /// Serializes this PokemonSpeciesApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpeciesApiModel&&(identical(other.evolutionChain, evolutionChain) || other.evolutionChain == evolutionChain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,evolutionChain);

@override
String toString() {
  return 'PokemonSpeciesApiModel(evolutionChain: $evolutionChain)';
}


}

/// @nodoc
abstract mixin class $PokemonSpeciesApiModelCopyWith<$Res>  {
  factory $PokemonSpeciesApiModelCopyWith(PokemonSpeciesApiModel value, $Res Function(PokemonSpeciesApiModel) _then) = _$PokemonSpeciesApiModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'evolution_chain') EvolutionChainRefApiModel evolutionChain
});


$EvolutionChainRefApiModelCopyWith<$Res> get evolutionChain;

}
/// @nodoc
class _$PokemonSpeciesApiModelCopyWithImpl<$Res>
    implements $PokemonSpeciesApiModelCopyWith<$Res> {
  _$PokemonSpeciesApiModelCopyWithImpl(this._self, this._then);

  final PokemonSpeciesApiModel _self;
  final $Res Function(PokemonSpeciesApiModel) _then;

/// Create a copy of PokemonSpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? evolutionChain = null,}) {
  return _then(_self.copyWith(
evolutionChain: null == evolutionChain ? _self.evolutionChain : evolutionChain // ignore: cast_nullable_to_non_nullable
as EvolutionChainRefApiModel,
  ));
}
/// Create a copy of PokemonSpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionChainRefApiModelCopyWith<$Res> get evolutionChain {
  
  return $EvolutionChainRefApiModelCopyWith<$Res>(_self.evolutionChain, (value) {
    return _then(_self.copyWith(evolutionChain: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonSpeciesApiModel].
extension PokemonSpeciesApiModelPatterns on PokemonSpeciesApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpeciesApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpeciesApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpeciesApiModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpeciesApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpeciesApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpeciesApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'evolution_chain')  EvolutionChainRefApiModel evolutionChain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpeciesApiModel() when $default != null:
return $default(_that.evolutionChain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'evolution_chain')  EvolutionChainRefApiModel evolutionChain)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpeciesApiModel():
return $default(_that.evolutionChain);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'evolution_chain')  EvolutionChainRefApiModel evolutionChain)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpeciesApiModel() when $default != null:
return $default(_that.evolutionChain);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSpeciesApiModel implements PokemonSpeciesApiModel {
   _PokemonSpeciesApiModel({@JsonKey(name: 'evolution_chain') required this.evolutionChain});
  factory _PokemonSpeciesApiModel.fromJson(Map<String, dynamic> json) => _$PokemonSpeciesApiModelFromJson(json);

@override@JsonKey(name: 'evolution_chain') final  EvolutionChainRefApiModel evolutionChain;

/// Create a copy of PokemonSpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpeciesApiModelCopyWith<_PokemonSpeciesApiModel> get copyWith => __$PokemonSpeciesApiModelCopyWithImpl<_PokemonSpeciesApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpeciesApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpeciesApiModel&&(identical(other.evolutionChain, evolutionChain) || other.evolutionChain == evolutionChain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,evolutionChain);

@override
String toString() {
  return 'PokemonSpeciesApiModel(evolutionChain: $evolutionChain)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpeciesApiModelCopyWith<$Res> implements $PokemonSpeciesApiModelCopyWith<$Res> {
  factory _$PokemonSpeciesApiModelCopyWith(_PokemonSpeciesApiModel value, $Res Function(_PokemonSpeciesApiModel) _then) = __$PokemonSpeciesApiModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'evolution_chain') EvolutionChainRefApiModel evolutionChain
});


@override $EvolutionChainRefApiModelCopyWith<$Res> get evolutionChain;

}
/// @nodoc
class __$PokemonSpeciesApiModelCopyWithImpl<$Res>
    implements _$PokemonSpeciesApiModelCopyWith<$Res> {
  __$PokemonSpeciesApiModelCopyWithImpl(this._self, this._then);

  final _PokemonSpeciesApiModel _self;
  final $Res Function(_PokemonSpeciesApiModel) _then;

/// Create a copy of PokemonSpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? evolutionChain = null,}) {
  return _then(_PokemonSpeciesApiModel(
evolutionChain: null == evolutionChain ? _self.evolutionChain : evolutionChain // ignore: cast_nullable_to_non_nullable
as EvolutionChainRefApiModel,
  ));
}

/// Create a copy of PokemonSpeciesApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EvolutionChainRefApiModelCopyWith<$Res> get evolutionChain {
  
  return $EvolutionChainRefApiModelCopyWith<$Res>(_self.evolutionChain, (value) {
    return _then(_self.copyWith(evolutionChain: value));
  });
}
}

// dart format on
