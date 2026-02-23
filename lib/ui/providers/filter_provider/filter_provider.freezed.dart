// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FilterModel {

 String get query; PokemonGen get gen; PokemonForm get form;
/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterModelCopyWith<FilterModel> get copyWith => _$FilterModelCopyWithImpl<FilterModel>(this as FilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterModel&&(identical(other.query, query) || other.query == query)&&(identical(other.gen, gen) || other.gen == gen)&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,query,gen,form);

@override
String toString() {
  return 'FilterModel(query: $query, gen: $gen, form: $form)';
}


}

/// @nodoc
abstract mixin class $FilterModelCopyWith<$Res>  {
  factory $FilterModelCopyWith(FilterModel value, $Res Function(FilterModel) _then) = _$FilterModelCopyWithImpl;
@useResult
$Res call({
 String query, PokemonGen gen, PokemonForm form
});




}
/// @nodoc
class _$FilterModelCopyWithImpl<$Res>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._self, this._then);

  final FilterModel _self;
  final $Res Function(FilterModel) _then;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? gen = null,Object? form = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,gen: null == gen ? _self.gen : gen // ignore: cast_nullable_to_non_nullable
as PokemonGen,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as PokemonForm,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterModel].
extension FilterModelPatterns on FilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterModel value)  $default,){
final _that = this;
switch (_that) {
case _FilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  PokemonGen gen,  PokemonForm form)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.query,_that.gen,_that.form);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  PokemonGen gen,  PokemonForm form)  $default,) {final _that = this;
switch (_that) {
case _FilterModel():
return $default(_that.query,_that.gen,_that.form);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  PokemonGen gen,  PokemonForm form)?  $default,) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.query,_that.gen,_that.form);case _:
  return null;

}
}

}

/// @nodoc


class _FilterModel implements FilterModel {
  const _FilterModel({this.query = '', this.gen = PokemonGen.gen0, this.form = PokemonForm.allforms});
  

@override@JsonKey() final  String query;
@override@JsonKey() final  PokemonGen gen;
@override@JsonKey() final  PokemonForm form;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterModelCopyWith<_FilterModel> get copyWith => __$FilterModelCopyWithImpl<_FilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterModel&&(identical(other.query, query) || other.query == query)&&(identical(other.gen, gen) || other.gen == gen)&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,query,gen,form);

@override
String toString() {
  return 'FilterModel(query: $query, gen: $gen, form: $form)';
}


}

/// @nodoc
abstract mixin class _$FilterModelCopyWith<$Res> implements $FilterModelCopyWith<$Res> {
  factory _$FilterModelCopyWith(_FilterModel value, $Res Function(_FilterModel) _then) = __$FilterModelCopyWithImpl;
@override @useResult
$Res call({
 String query, PokemonGen gen, PokemonForm form
});




}
/// @nodoc
class __$FilterModelCopyWithImpl<$Res>
    implements _$FilterModelCopyWith<$Res> {
  __$FilterModelCopyWithImpl(this._self, this._then);

  final _FilterModel _self;
  final $Res Function(_FilterModel) _then;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? gen = null,Object? form = null,}) {
  return _then(_FilterModel(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,gen: null == gen ? _self.gen : gen // ignore: cast_nullable_to_non_nullable
as PokemonGen,form: null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as PokemonForm,
  ));
}


}

// dart format on
