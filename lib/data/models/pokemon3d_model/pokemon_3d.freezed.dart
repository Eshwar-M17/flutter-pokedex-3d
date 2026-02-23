// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_3d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Pokemon3dModel {

 int get id; List<PokemonForm> get forms;
/// Create a copy of Pokemon3dModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Pokemon3dModelCopyWith<Pokemon3dModel> get copyWith => _$Pokemon3dModelCopyWithImpl<Pokemon3dModel>(this as Pokemon3dModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pokemon3dModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.forms, forms));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(forms));

@override
String toString() {
  return 'Pokemon3dModel(id: $id, forms: $forms)';
}


}

/// @nodoc
abstract mixin class $Pokemon3dModelCopyWith<$Res>  {
  factory $Pokemon3dModelCopyWith(Pokemon3dModel value, $Res Function(Pokemon3dModel) _then) = _$Pokemon3dModelCopyWithImpl;
@useResult
$Res call({
 int id, List<PokemonForm> forms
});




}
/// @nodoc
class _$Pokemon3dModelCopyWithImpl<$Res>
    implements $Pokemon3dModelCopyWith<$Res> {
  _$Pokemon3dModelCopyWithImpl(this._self, this._then);

  final Pokemon3dModel _self;
  final $Res Function(Pokemon3dModel) _then;

/// Create a copy of Pokemon3dModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? forms = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,forms: null == forms ? _self.forms : forms // ignore: cast_nullable_to_non_nullable
as List<PokemonForm>,
  ));
}

}


/// Adds pattern-matching-related methods to [Pokemon3dModel].
extension Pokemon3dModelPatterns on Pokemon3dModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pokemon3dApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pokemon3dApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pokemon3dApiModel value)  $default,){
final _that = this;
switch (_that) {
case _Pokemon3dApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pokemon3dApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _Pokemon3dApiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<PokemonForm> forms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pokemon3dApiModel() when $default != null:
return $default(_that.id,_that.forms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<PokemonForm> forms)  $default,) {final _that = this;
switch (_that) {
case _Pokemon3dApiModel():
return $default(_that.id,_that.forms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<PokemonForm> forms)?  $default,) {final _that = this;
switch (_that) {
case _Pokemon3dApiModel() when $default != null:
return $default(_that.id,_that.forms);case _:
  return null;

}
}

}

/// @nodoc


class _Pokemon3dApiModel implements Pokemon3dModel {
   _Pokemon3dApiModel({required this.id, required final  List<PokemonForm> forms}): _forms = forms;
  

@override final  int id;
 final  List<PokemonForm> _forms;
@override List<PokemonForm> get forms {
  if (_forms is EqualUnmodifiableListView) return _forms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forms);
}


/// Create a copy of Pokemon3dModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Pokemon3dApiModelCopyWith<_Pokemon3dApiModel> get copyWith => __$Pokemon3dApiModelCopyWithImpl<_Pokemon3dApiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pokemon3dApiModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._forms, _forms));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_forms));

@override
String toString() {
  return 'Pokemon3dModel(id: $id, forms: $forms)';
}


}

/// @nodoc
abstract mixin class _$Pokemon3dApiModelCopyWith<$Res> implements $Pokemon3dModelCopyWith<$Res> {
  factory _$Pokemon3dApiModelCopyWith(_Pokemon3dApiModel value, $Res Function(_Pokemon3dApiModel) _then) = __$Pokemon3dApiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, List<PokemonForm> forms
});




}
/// @nodoc
class __$Pokemon3dApiModelCopyWithImpl<$Res>
    implements _$Pokemon3dApiModelCopyWith<$Res> {
  __$Pokemon3dApiModelCopyWithImpl(this._self, this._then);

  final _Pokemon3dApiModel _self;
  final $Res Function(_Pokemon3dApiModel) _then;

/// Create a copy of Pokemon3dModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? forms = null,}) {
  return _then(_Pokemon3dApiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,forms: null == forms ? _self._forms : forms // ignore: cast_nullable_to_non_nullable
as List<PokemonForm>,
  ));
}


}

/// @nodoc
mixin _$PokemonForm {

 String get name; String get model; String get formName;
/// Create a copy of PokemonForm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonFormCopyWith<PokemonForm> get copyWith => _$PokemonFormCopyWithImpl<PokemonForm>(this as PokemonForm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonForm&&(identical(other.name, name) || other.name == name)&&(identical(other.model, model) || other.model == model)&&(identical(other.formName, formName) || other.formName == formName));
}


@override
int get hashCode => Object.hash(runtimeType,name,model,formName);

@override
String toString() {
  return 'PokemonForm(name: $name, model: $model, formName: $formName)';
}


}

/// @nodoc
abstract mixin class $PokemonFormCopyWith<$Res>  {
  factory $PokemonFormCopyWith(PokemonForm value, $Res Function(PokemonForm) _then) = _$PokemonFormCopyWithImpl;
@useResult
$Res call({
 String name, String model, String formName
});




}
/// @nodoc
class _$PokemonFormCopyWithImpl<$Res>
    implements $PokemonFormCopyWith<$Res> {
  _$PokemonFormCopyWithImpl(this._self, this._then);

  final PokemonForm _self;
  final $Res Function(PokemonForm) _then;

/// Create a copy of PokemonForm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? model = null,Object? formName = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,formName: null == formName ? _self.formName : formName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonForm].
extension PokemonFormPatterns on PokemonForm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonForm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonForm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonForm value)  $default,){
final _that = this;
switch (_that) {
case _PokemonForm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonForm value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonForm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String model,  String formName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonForm() when $default != null:
return $default(_that.name,_that.model,_that.formName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String model,  String formName)  $default,) {final _that = this;
switch (_that) {
case _PokemonForm():
return $default(_that.name,_that.model,_that.formName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String model,  String formName)?  $default,) {final _that = this;
switch (_that) {
case _PokemonForm() when $default != null:
return $default(_that.name,_that.model,_that.formName);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonForm implements PokemonForm {
   _PokemonForm({required this.name, required this.model, required this.formName});
  

@override final  String name;
@override final  String model;
@override final  String formName;

/// Create a copy of PokemonForm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonFormCopyWith<_PokemonForm> get copyWith => __$PokemonFormCopyWithImpl<_PokemonForm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonForm&&(identical(other.name, name) || other.name == name)&&(identical(other.model, model) || other.model == model)&&(identical(other.formName, formName) || other.formName == formName));
}


@override
int get hashCode => Object.hash(runtimeType,name,model,formName);

@override
String toString() {
  return 'PokemonForm(name: $name, model: $model, formName: $formName)';
}


}

/// @nodoc
abstract mixin class _$PokemonFormCopyWith<$Res> implements $PokemonFormCopyWith<$Res> {
  factory _$PokemonFormCopyWith(_PokemonForm value, $Res Function(_PokemonForm) _then) = __$PokemonFormCopyWithImpl;
@override @useResult
$Res call({
 String name, String model, String formName
});




}
/// @nodoc
class __$PokemonFormCopyWithImpl<$Res>
    implements _$PokemonFormCopyWith<$Res> {
  __$PokemonFormCopyWithImpl(this._self, this._then);

  final _PokemonForm _self;
  final $Res Function(_PokemonForm) _then;

/// Create a copy of PokemonForm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? model = null,Object? formName = null,}) {
  return _then(_PokemonForm(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,formName: null == formName ? _self.formName : formName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
