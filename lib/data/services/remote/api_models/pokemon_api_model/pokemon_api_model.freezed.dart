// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
PokemonDetailApiModel _$PokemonDetailApiModelFromJson(
  Map<String, dynamic> json
) {
    return _PokemonApiModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$PokemonDetailApiModel {

@JsonKey(name: "base_experience") int get baseExperience; int get height; int get id; String get name; int get order; Map<String, String> get sprites; List<StatsDetailApiModel> get stats; List<TypeDetailApiModel> get types; int get weight;
/// Create a copy of PokemonDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailApiModelCopyWith<PokemonDetailApiModel> get copyWith => _$PokemonDetailApiModelCopyWithImpl<PokemonDetailApiModel>(this as PokemonDetailApiModel, _$identity);

  /// Serializes this PokemonDetailApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailApiModel&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&(identical(other.height, height) || other.height == height)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other.sprites, sprites)&&const DeepCollectionEquality().equals(other.stats, stats)&&const DeepCollectionEquality().equals(other.types, types)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseExperience,height,id,name,order,const DeepCollectionEquality().hash(sprites),const DeepCollectionEquality().hash(stats),const DeepCollectionEquality().hash(types),weight);

@override
String toString() {
  return 'PokemonDetailApiModel(baseExperience: $baseExperience, height: $height, id: $id, name: $name, order: $order, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailApiModelCopyWith<$Res>  {
  factory $PokemonDetailApiModelCopyWith(PokemonDetailApiModel value, $Res Function(PokemonDetailApiModel) _then) = _$PokemonDetailApiModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "base_experience") int baseExperience, int height, int id, String name, int order, Map<String, String> sprites, List<StatsDetailApiModel> stats, List<TypeDetailApiModel> types, int weight
});




}
/// @nodoc
class _$PokemonDetailApiModelCopyWithImpl<$Res>
    implements $PokemonDetailApiModelCopyWith<$Res> {
  _$PokemonDetailApiModelCopyWithImpl(this._self, this._then);

  final PokemonDetailApiModel _self;
  final $Res Function(PokemonDetailApiModel) _then;

/// Create a copy of PokemonDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseExperience = null,Object? height = null,Object? id = null,Object? name = null,Object? order = null,Object? sprites = null,Object? stats = null,Object? types = null,Object? weight = null,}) {
  return _then(_self.copyWith(
baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as Map<String, String>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatsDetailApiModel>,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<TypeDetailApiModel>,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonDetailApiModel].
extension PokemonDetailApiModelPatterns on PokemonDetailApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonApiModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "base_experience")  int baseExperience,  int height,  int id,  String name,  int order,  Map<String, String> sprites,  List<StatsDetailApiModel> stats,  List<TypeDetailApiModel> types,  int weight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonApiModel() when $default != null:
return $default(_that.baseExperience,_that.height,_that.id,_that.name,_that.order,_that.sprites,_that.stats,_that.types,_that.weight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "base_experience")  int baseExperience,  int height,  int id,  String name,  int order,  Map<String, String> sprites,  List<StatsDetailApiModel> stats,  List<TypeDetailApiModel> types,  int weight)  $default,) {final _that = this;
switch (_that) {
case _PokemonApiModel():
return $default(_that.baseExperience,_that.height,_that.id,_that.name,_that.order,_that.sprites,_that.stats,_that.types,_that.weight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "base_experience")  int baseExperience,  int height,  int id,  String name,  int order,  Map<String, String> sprites,  List<StatsDetailApiModel> stats,  List<TypeDetailApiModel> types,  int weight)?  $default,) {final _that = this;
switch (_that) {
case _PokemonApiModel() when $default != null:
return $default(_that.baseExperience,_that.height,_that.id,_that.name,_that.order,_that.sprites,_that.stats,_that.types,_that.weight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonApiModel implements PokemonDetailApiModel {
   _PokemonApiModel({@JsonKey(name: "base_experience") required this.baseExperience, required this.height, required this.id, required this.name, required this.order, required final  Map<String, String> sprites, required final  List<StatsDetailApiModel> stats, required final  List<TypeDetailApiModel> types, required this.weight}): _sprites = sprites,_stats = stats,_types = types;
  factory _PokemonApiModel.fromJson(Map<String, dynamic> json) => _$PokemonApiModelFromJson(json);

@override@JsonKey(name: "base_experience") final  int baseExperience;
@override final  int height;
@override final  int id;
@override final  String name;
@override final  int order;
 final  Map<String, String> _sprites;
@override Map<String, String> get sprites {
  if (_sprites is EqualUnmodifiableMapView) return _sprites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sprites);
}

 final  List<StatsDetailApiModel> _stats;
@override List<StatsDetailApiModel> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}

 final  List<TypeDetailApiModel> _types;
@override List<TypeDetailApiModel> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

@override final  int weight;

/// Create a copy of PokemonDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonApiModelCopyWith<_PokemonApiModel> get copyWith => __$PokemonApiModelCopyWithImpl<_PokemonApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonApiModel&&(identical(other.baseExperience, baseExperience) || other.baseExperience == baseExperience)&&(identical(other.height, height) || other.height == height)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.order, order) || other.order == order)&&const DeepCollectionEquality().equals(other._sprites, _sprites)&&const DeepCollectionEquality().equals(other._stats, _stats)&&const DeepCollectionEquality().equals(other._types, _types)&&(identical(other.weight, weight) || other.weight == weight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseExperience,height,id,name,order,const DeepCollectionEquality().hash(_sprites),const DeepCollectionEquality().hash(_stats),const DeepCollectionEquality().hash(_types),weight);

@override
String toString() {
  return 'PokemonDetailApiModel(baseExperience: $baseExperience, height: $height, id: $id, name: $name, order: $order, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
}


}

/// @nodoc
abstract mixin class _$PokemonApiModelCopyWith<$Res> implements $PokemonDetailApiModelCopyWith<$Res> {
  factory _$PokemonApiModelCopyWith(_PokemonApiModel value, $Res Function(_PokemonApiModel) _then) = __$PokemonApiModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "base_experience") int baseExperience, int height, int id, String name, int order, Map<String, String> sprites, List<StatsDetailApiModel> stats, List<TypeDetailApiModel> types, int weight
});




}
/// @nodoc
class __$PokemonApiModelCopyWithImpl<$Res>
    implements _$PokemonApiModelCopyWith<$Res> {
  __$PokemonApiModelCopyWithImpl(this._self, this._then);

  final _PokemonApiModel _self;
  final $Res Function(_PokemonApiModel) _then;

/// Create a copy of PokemonDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseExperience = null,Object? height = null,Object? id = null,Object? name = null,Object? order = null,Object? sprites = null,Object? stats = null,Object? types = null,Object? weight = null,}) {
  return _then(_PokemonApiModel(
baseExperience: null == baseExperience ? _self.baseExperience : baseExperience // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,sprites: null == sprites ? _self._sprites : sprites // ignore: cast_nullable_to_non_nullable
as Map<String, String>,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<StatsDetailApiModel>,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<TypeDetailApiModel>,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StatsDetailApiModel {

@JsonKey(name: 'base_stat') int get baseStat; int get effort; StatApiModel get stat;
/// Create a copy of StatsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsDetailApiModelCopyWith<StatsDetailApiModel> get copyWith => _$StatsDetailApiModelCopyWithImpl<StatsDetailApiModel>(this as StatsDetailApiModel, _$identity);

  /// Serializes this StatsDetailApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsDetailApiModel&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.effort, effort) || other.effort == effort)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,effort,stat);

@override
String toString() {
  return 'StatsDetailApiModel(baseStat: $baseStat, effort: $effort, stat: $stat)';
}


}

/// @nodoc
abstract mixin class $StatsDetailApiModelCopyWith<$Res>  {
  factory $StatsDetailApiModelCopyWith(StatsDetailApiModel value, $Res Function(StatsDetailApiModel) _then) = _$StatsDetailApiModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, int effort, StatApiModel stat
});


$StatApiModelCopyWith<$Res> get stat;

}
/// @nodoc
class _$StatsDetailApiModelCopyWithImpl<$Res>
    implements $StatsDetailApiModelCopyWith<$Res> {
  _$StatsDetailApiModelCopyWithImpl(this._self, this._then);

  final StatsDetailApiModel _self;
  final $Res Function(StatsDetailApiModel) _then;

/// Create a copy of StatsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStat = null,Object? effort = null,Object? stat = null,}) {
  return _then(_self.copyWith(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as StatApiModel,
  ));
}
/// Create a copy of StatsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatApiModelCopyWith<$Res> get stat {
  
  return $StatApiModelCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// Adds pattern-matching-related methods to [StatsDetailApiModel].
extension StatsDetailApiModelPatterns on StatsDetailApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsDetailApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsDetailApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsDetailApiModel value)  $default,){
final _that = this;
switch (_that) {
case _StatsDetailApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsDetailApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatsDetailApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'base_stat')  int baseStat,  int effort,  StatApiModel stat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsDetailApiModel() when $default != null:
return $default(_that.baseStat,_that.effort,_that.stat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'base_stat')  int baseStat,  int effort,  StatApiModel stat)  $default,) {final _that = this;
switch (_that) {
case _StatsDetailApiModel():
return $default(_that.baseStat,_that.effort,_that.stat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'base_stat')  int baseStat,  int effort,  StatApiModel stat)?  $default,) {final _that = this;
switch (_that) {
case _StatsDetailApiModel() when $default != null:
return $default(_that.baseStat,_that.effort,_that.stat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsDetailApiModel implements StatsDetailApiModel {
   _StatsDetailApiModel({@JsonKey(name: 'base_stat') required this.baseStat, required this.effort, required this.stat});
  factory _StatsDetailApiModel.fromJson(Map<String, dynamic> json) => _$StatsDetailApiModelFromJson(json);

@override@JsonKey(name: 'base_stat') final  int baseStat;
@override final  int effort;
@override final  StatApiModel stat;

/// Create a copy of StatsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsDetailApiModelCopyWith<_StatsDetailApiModel> get copyWith => __$StatsDetailApiModelCopyWithImpl<_StatsDetailApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsDetailApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsDetailApiModel&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.effort, effort) || other.effort == effort)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,effort,stat);

@override
String toString() {
  return 'StatsDetailApiModel(baseStat: $baseStat, effort: $effort, stat: $stat)';
}


}

/// @nodoc
abstract mixin class _$StatsDetailApiModelCopyWith<$Res> implements $StatsDetailApiModelCopyWith<$Res> {
  factory _$StatsDetailApiModelCopyWith(_StatsDetailApiModel value, $Res Function(_StatsDetailApiModel) _then) = __$StatsDetailApiModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, int effort, StatApiModel stat
});


@override $StatApiModelCopyWith<$Res> get stat;

}
/// @nodoc
class __$StatsDetailApiModelCopyWithImpl<$Res>
    implements _$StatsDetailApiModelCopyWith<$Res> {
  __$StatsDetailApiModelCopyWithImpl(this._self, this._then);

  final _StatsDetailApiModel _self;
  final $Res Function(_StatsDetailApiModel) _then;

/// Create a copy of StatsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStat = null,Object? effort = null,Object? stat = null,}) {
  return _then(_StatsDetailApiModel(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,effort: null == effort ? _self.effort : effort // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as StatApiModel,
  ));
}

/// Create a copy of StatsDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatApiModelCopyWith<$Res> get stat {
  
  return $StatApiModelCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc
mixin _$StatApiModel {

 String get name; String get url;
/// Create a copy of StatApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatApiModelCopyWith<StatApiModel> get copyWith => _$StatApiModelCopyWithImpl<StatApiModel>(this as StatApiModel, _$identity);

  /// Serializes this StatApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'StatApiModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $StatApiModelCopyWith<$Res>  {
  factory $StatApiModelCopyWith(StatApiModel value, $Res Function(StatApiModel) _then) = _$StatApiModelCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$StatApiModelCopyWithImpl<$Res>
    implements $StatApiModelCopyWith<$Res> {
  _$StatApiModelCopyWithImpl(this._self, this._then);

  final StatApiModel _self;
  final $Res Function(StatApiModel) _then;

/// Create a copy of StatApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StatApiModel].
extension StatApiModelPatterns on StatApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatApiModel value)  $default,){
final _that = this;
switch (_that) {
case _StatApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatApiModel() when $default != null:
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
case _StatApiModel() when $default != null:
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
case _StatApiModel():
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
case _StatApiModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatApiModel implements StatApiModel {
   _StatApiModel({required this.name, required this.url});
  factory _StatApiModel.fromJson(Map<String, dynamic> json) => _$StatApiModelFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of StatApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatApiModelCopyWith<_StatApiModel> get copyWith => __$StatApiModelCopyWithImpl<_StatApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'StatApiModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$StatApiModelCopyWith<$Res> implements $StatApiModelCopyWith<$Res> {
  factory _$StatApiModelCopyWith(_StatApiModel value, $Res Function(_StatApiModel) _then) = __$StatApiModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$StatApiModelCopyWithImpl<$Res>
    implements _$StatApiModelCopyWith<$Res> {
  __$StatApiModelCopyWithImpl(this._self, this._then);

  final _StatApiModel _self;
  final $Res Function(_StatApiModel) _then;

/// Create a copy of StatApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_StatApiModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TypeDetailApiModel {

 int get slot; TypeApiModel get type;
/// Create a copy of TypeDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeDetailApiModelCopyWith<TypeDetailApiModel> get copyWith => _$TypeDetailApiModelCopyWithImpl<TypeDetailApiModel>(this as TypeDetailApiModel, _$identity);

  /// Serializes this TypeDetailApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeDetailApiModel&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'TypeDetailApiModel(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $TypeDetailApiModelCopyWith<$Res>  {
  factory $TypeDetailApiModelCopyWith(TypeDetailApiModel value, $Res Function(TypeDetailApiModel) _then) = _$TypeDetailApiModelCopyWithImpl;
@useResult
$Res call({
 int slot, TypeApiModel type
});


$TypeApiModelCopyWith<$Res> get type;

}
/// @nodoc
class _$TypeDetailApiModelCopyWithImpl<$Res>
    implements $TypeDetailApiModelCopyWith<$Res> {
  _$TypeDetailApiModelCopyWithImpl(this._self, this._then);

  final TypeDetailApiModel _self;
  final $Res Function(TypeDetailApiModel) _then;

/// Create a copy of TypeDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeApiModel,
  ));
}
/// Create a copy of TypeDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeApiModelCopyWith<$Res> get type {
  
  return $TypeApiModelCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [TypeDetailApiModel].
extension TypeDetailApiModelPatterns on TypeDetailApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeDetailApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeDetailApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeDetailApiModel value)  $default,){
final _that = this;
switch (_that) {
case _TypeDetailApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeDetailApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TypeDetailApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int slot,  TypeApiModel type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypeDetailApiModel() when $default != null:
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int slot,  TypeApiModel type)  $default,) {final _that = this;
switch (_that) {
case _TypeDetailApiModel():
return $default(_that.slot,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int slot,  TypeApiModel type)?  $default,) {final _that = this;
switch (_that) {
case _TypeDetailApiModel() when $default != null:
return $default(_that.slot,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeDetailApiModel implements TypeDetailApiModel {
   _TypeDetailApiModel({required this.slot, required this.type});
  factory _TypeDetailApiModel.fromJson(Map<String, dynamic> json) => _$TypeDetailApiModelFromJson(json);

@override final  int slot;
@override final  TypeApiModel type;

/// Create a copy of TypeDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeDetailApiModelCopyWith<_TypeDetailApiModel> get copyWith => __$TypeDetailApiModelCopyWithImpl<_TypeDetailApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeDetailApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeDetailApiModel&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'TypeDetailApiModel(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypeDetailApiModelCopyWith<$Res> implements $TypeDetailApiModelCopyWith<$Res> {
  factory _$TypeDetailApiModelCopyWith(_TypeDetailApiModel value, $Res Function(_TypeDetailApiModel) _then) = __$TypeDetailApiModelCopyWithImpl;
@override @useResult
$Res call({
 int slot, TypeApiModel type
});


@override $TypeApiModelCopyWith<$Res> get type;

}
/// @nodoc
class __$TypeDetailApiModelCopyWithImpl<$Res>
    implements _$TypeDetailApiModelCopyWith<$Res> {
  __$TypeDetailApiModelCopyWithImpl(this._self, this._then);

  final _TypeDetailApiModel _self;
  final $Res Function(_TypeDetailApiModel) _then;

/// Create a copy of TypeDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_TypeDetailApiModel(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeApiModel,
  ));
}

/// Create a copy of TypeDetailApiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeApiModelCopyWith<$Res> get type {
  
  return $TypeApiModelCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
mixin _$TypeApiModel {

 String get name; String get url;
/// Create a copy of TypeApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeApiModelCopyWith<TypeApiModel> get copyWith => _$TypeApiModelCopyWithImpl<TypeApiModel>(this as TypeApiModel, _$identity);

  /// Serializes this TypeApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'TypeApiModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $TypeApiModelCopyWith<$Res>  {
  factory $TypeApiModelCopyWith(TypeApiModel value, $Res Function(TypeApiModel) _then) = _$TypeApiModelCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$TypeApiModelCopyWithImpl<$Res>
    implements $TypeApiModelCopyWith<$Res> {
  _$TypeApiModelCopyWithImpl(this._self, this._then);

  final TypeApiModel _self;
  final $Res Function(TypeApiModel) _then;

/// Create a copy of TypeApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TypeApiModel].
extension TypeApiModelPatterns on TypeApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeApiModel value)  $default,){
final _that = this;
switch (_that) {
case _TypeApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _TypeApiModel() when $default != null:
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
case _TypeApiModel() when $default != null:
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
case _TypeApiModel():
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
case _TypeApiModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeApiModel implements TypeApiModel {
   _TypeApiModel({required this.name, required this.url});
  factory _TypeApiModel.fromJson(Map<String, dynamic> json) => _$TypeApiModelFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of TypeApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeApiModelCopyWith<_TypeApiModel> get copyWith => __$TypeApiModelCopyWithImpl<_TypeApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'TypeApiModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$TypeApiModelCopyWith<$Res> implements $TypeApiModelCopyWith<$Res> {
  factory _$TypeApiModelCopyWith(_TypeApiModel value, $Res Function(_TypeApiModel) _then) = __$TypeApiModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$TypeApiModelCopyWithImpl<$Res>
    implements _$TypeApiModelCopyWith<$Res> {
  __$TypeApiModelCopyWithImpl(this._self, this._then);

  final _TypeApiModel _self;
  final $Res Function(_TypeApiModel) _then;

/// Create a copy of TypeApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_TypeApiModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
