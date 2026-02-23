// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonDetailsModel {

 int get baseExperience; int get height; int get weight; int get id; String get name; List<Stat> get stats; List<String> get types;
/// Create a copy of PokemonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailsModelCopyWith<PokemonDetailsModel> get copyWith => _$PokemonDetailsModelCopyWithImpl<PokemonDetailsModel>(this as PokemonDetailsModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailsModel&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.stats, stats)&&const DeepCollectionEquality().equals(other.types, types));
}


@override
int get hashCode => Object.hash(runtimeType,baseExperience,height,weight,id,name,const DeepCollectionEquality().hash(stats),const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'PokemonDetailsModel(baseExperience: $baseExperience, height: $height, weight: $weight, id: $id, name: $name, stats: $stats, types: $types)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailsModelCopyWith<$Res>  {
  factory $PokemonDetailsModelCopyWith(PokemonDetailsModel value, $Res Function(PokemonDetailsModel) _then) = _$PokemonDetailsModelCopyWithImpl;
@useResult
$Res call({
 int baseExperience, int height, int weight, int id, String name, List<Stat> stats, List<String> types
});




}
/// @nodoc
class _$PokemonDetailsModelCopyWithImpl<$Res>
    implements $PokemonDetailsModelCopyWith<$Res> {
  _$PokemonDetailsModelCopyWithImpl(this._self, this._then);

  final PokemonDetailsModel _self;
  final $Res Function(PokemonDetailsModel) _then;

/// Create a copy of PokemonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseExperience = null,Object? height = null,Object? weight = null,Object? id = null,Object? name = null,Object? stats = null,Object? types = null,}) {
  return _then(_self.copyWith(
baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<Stat>,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonDetailsModel].
extension PokemonDetailsModelPatterns on PokemonDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int baseExperience,  int height,  int weight,  int id,  String name,  List<Stat> stats,  List<String> types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonDetailsModel() when $default != null:
return $default(_that.baseExperience,_that.height,_that.weight,_that.id,_that.name,_that.stats,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int baseExperience,  int height,  int weight,  int id,  String name,  List<Stat> stats,  List<String> types)  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailsModel():
return $default(_that.baseExperience,_that.height,_that.weight,_that.id,_that.name,_that.stats,_that.types);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int baseExperience,  int height,  int weight,  int id,  String name,  List<Stat> stats,  List<String> types)?  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailsModel() when $default != null:
return $default(_that.baseExperience,_that.height,_that.weight,_that.id,_that.name,_that.stats,_that.types);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonDetailsModel implements PokemonDetailsModel {
   _PokemonDetailsModel({required this.baseExperience, required this.height, required this.weight, required this.id, required this.name, required final  List<Stat> stats, required final  List<String> types}): _stats = stats,_types = types;
  

@override final  int baseExperience;
@override final  int height;
@override final  int weight;
@override final  int id;
@override final  String name;
 final  List<Stat> _stats;
@override List<Stat> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}

 final  List<String> _types;
@override List<String> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of PokemonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailsModelCopyWith<_PokemonDetailsModel> get copyWith => __$PokemonDetailsModelCopyWithImpl<_PokemonDetailsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetailsModel&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._stats, _stats)&&const DeepCollectionEquality().equals(other._types, _types));
}


@override
int get hashCode => Object.hash(runtimeType,baseExperience,height,weight,id,name,const DeepCollectionEquality().hash(_stats),const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'PokemonDetailsModel(baseExperience: $baseExperience, height: $height, weight: $weight, id: $id, name: $name, stats: $stats, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailsModelCopyWith<$Res> implements $PokemonDetailsModelCopyWith<$Res> {
  factory _$PokemonDetailsModelCopyWith(_PokemonDetailsModel value, $Res Function(_PokemonDetailsModel) _then) = __$PokemonDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 int baseExperience, int height, int weight, int id, String name, List<Stat> stats, List<String> types
});




}
/// @nodoc
class __$PokemonDetailsModelCopyWithImpl<$Res>
    implements _$PokemonDetailsModelCopyWith<$Res> {
  __$PokemonDetailsModelCopyWithImpl(this._self, this._then);

  final _PokemonDetailsModel _self;
  final $Res Function(_PokemonDetailsModel) _then;

/// Create a copy of PokemonDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseExperience = null,Object? height = null,Object? weight = null,Object? id = null,Object? name = null,Object? stats = null,Object? types = null,}) {
  return _then(_PokemonDetailsModel(
baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<Stat>,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$Stat {

 int get baseStat; String get name; int get effort;
/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatCopyWith<Stat> get copyWith => _$StatCopyWithImpl<Stat>(this as Stat, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stat&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.name, name) || other.name == name)&&(identical(other.effort, effort) || other.effort == effort));
}


@override
int get hashCode => Object.hash(runtimeType,baseStat,name,effort);

@override
String toString() {
  return 'Stat(baseStat: $baseStat, name: $name, effort: $effort)';
}


}

/// @nodoc
abstract mixin class $StatCopyWith<$Res>  {
  factory $StatCopyWith(Stat value, $Res Function(Stat) _then) = _$StatCopyWithImpl;
@useResult
$Res call({
 int baseStat, String name, int effort
});




}
/// @nodoc
class _$StatCopyWithImpl<$Res>
    implements $StatCopyWith<$Res> {
  _$StatCopyWithImpl(this._self, this._then);

  final Stat _self;
  final $Res Function(Stat) _then;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStat = null,Object? name = null,Object? effort = null,}) {
  return _then(_self.copyWith(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Stat].
extension StatPatterns on Stat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Stat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Stat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Stat value)  $default,){
final _that = this;
switch (_that) {
case _Stat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Stat value)?  $default,){
final _that = this;
switch (_that) {
case _Stat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int baseStat,  String name,  int effort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stat() when $default != null:
return $default(_that.baseStat,_that.name,_that.effort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int baseStat,  String name,  int effort)  $default,) {final _that = this;
switch (_that) {
case _Stat():
return $default(_that.baseStat,_that.name,_that.effort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int baseStat,  String name,  int effort)?  $default,) {final _that = this;
switch (_that) {
case _Stat() when $default != null:
return $default(_that.baseStat,_that.name,_that.effort);case _:
  return null;

}
}

}

/// @nodoc


class _Stat implements Stat {
   _Stat({required this.baseStat, required this.name, required this.effort});
  

@override final  int baseStat;
@override final  String name;
@override final  int effort;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatCopyWith<_Stat> get copyWith => __$StatCopyWithImpl<_Stat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stat&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.name, name) || other.name == name)&&(identical(other.effort, effort) || other.effort == effort));
}


@override
int get hashCode => Object.hash(runtimeType,baseStat,name,effort);

@override
String toString() {
  return 'Stat(baseStat: $baseStat, name: $name, effort: $effort)';
}


}

/// @nodoc
abstract mixin class _$StatCopyWith<$Res> implements $StatCopyWith<$Res> {
  factory _$StatCopyWith(_Stat value, $Res Function(_Stat) _then) = __$StatCopyWithImpl;
@override @useResult
$Res call({
 int baseStat, String name, int effort
});




}
/// @nodoc
class __$StatCopyWithImpl<$Res>
    implements _$StatCopyWith<$Res> {
  __$StatCopyWithImpl(this._self, this._then);

  final _Stat _self;
  final $Res Function(_Stat) _then;

/// Create a copy of Stat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStat = null,Object? name = null,Object? effort = null,}) {
  return _then(_Stat(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
