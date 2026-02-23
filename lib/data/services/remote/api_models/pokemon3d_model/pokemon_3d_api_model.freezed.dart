// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_3d_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pokemon3dApiModel {

 int get id; List<FormApiModel> get forms;
/// Create a copy of Pokemon3dApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Pokemon3dApiModelCopyWith<Pokemon3dApiModel> get copyWith => _$Pokemon3dApiModelCopyWithImpl<Pokemon3dApiModel>(this as Pokemon3dApiModel, _$identity);

  /// Serializes this Pokemon3dApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pokemon3dApiModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.forms, forms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(forms));

@override
String toString() {
  return 'Pokemon3dApiModel(id: $id, forms: $forms)';
}


}

/// @nodoc
abstract mixin class $Pokemon3dApiModelCopyWith<$Res>  {
  factory $Pokemon3dApiModelCopyWith(Pokemon3dApiModel value, $Res Function(Pokemon3dApiModel) _then) = _$Pokemon3dApiModelCopyWithImpl;
@useResult
$Res call({
 int id, List<FormApiModel> forms
});




}
/// @nodoc
class _$Pokemon3dApiModelCopyWithImpl<$Res>
    implements $Pokemon3dApiModelCopyWith<$Res> {
  _$Pokemon3dApiModelCopyWithImpl(this._self, this._then);

  final Pokemon3dApiModel _self;
  final $Res Function(Pokemon3dApiModel) _then;

/// Create a copy of Pokemon3dApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? forms = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,forms: null == forms ? _self.forms : forms // ignore: cast_nullable_to_non_nullable
as List<FormApiModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [Pokemon3dApiModel].
extension Pokemon3dApiModelPatterns on Pokemon3dApiModel {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<FormApiModel> forms)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<FormApiModel> forms)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<FormApiModel> forms)?  $default,) {final _that = this;
switch (_that) {
case _Pokemon3dApiModel() when $default != null:
return $default(_that.id,_that.forms);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pokemon3dApiModel implements Pokemon3dApiModel {
   _Pokemon3dApiModel({required this.id, required final  List<FormApiModel> forms}): _forms = forms;
  factory _Pokemon3dApiModel.fromJson(Map<String, dynamic> json) => _$Pokemon3dApiModelFromJson(json);

@override final  int id;
 final  List<FormApiModel> _forms;
@override List<FormApiModel> get forms {
  if (_forms is EqualUnmodifiableListView) return _forms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forms);
}


/// Create a copy of Pokemon3dApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Pokemon3dApiModelCopyWith<_Pokemon3dApiModel> get copyWith => __$Pokemon3dApiModelCopyWithImpl<_Pokemon3dApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$Pokemon3dApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pokemon3dApiModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._forms, _forms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_forms));

@override
String toString() {
  return 'Pokemon3dApiModel(id: $id, forms: $forms)';
}


}

/// @nodoc
abstract mixin class _$Pokemon3dApiModelCopyWith<$Res> implements $Pokemon3dApiModelCopyWith<$Res> {
  factory _$Pokemon3dApiModelCopyWith(_Pokemon3dApiModel value, $Res Function(_Pokemon3dApiModel) _then) = __$Pokemon3dApiModelCopyWithImpl;
@override @useResult
$Res call({
 int id, List<FormApiModel> forms
});




}
/// @nodoc
class __$Pokemon3dApiModelCopyWithImpl<$Res>
    implements _$Pokemon3dApiModelCopyWith<$Res> {
  __$Pokemon3dApiModelCopyWithImpl(this._self, this._then);

  final _Pokemon3dApiModel _self;
  final $Res Function(_Pokemon3dApiModel) _then;

/// Create a copy of Pokemon3dApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? forms = null,}) {
  return _then(_Pokemon3dApiModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,forms: null == forms ? _self._forms : forms // ignore: cast_nullable_to_non_nullable
as List<FormApiModel>,
  ));
}


}


/// @nodoc
mixin _$FormApiModel {

 String get name; String get model; String get formName;
/// Create a copy of FormApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormApiModelCopyWith<FormApiModel> get copyWith => _$FormApiModelCopyWithImpl<FormApiModel>(this as FormApiModel, _$identity);

  /// Serializes this FormApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.model, model) || other.model == model)&&(identical(other.formName, formName) || other.formName == formName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,model,formName);

@override
String toString() {
  return 'FormApiModel(name: $name, model: $model, formName: $formName)';
}


}

/// @nodoc
abstract mixin class $FormApiModelCopyWith<$Res>  {
  factory $FormApiModelCopyWith(FormApiModel value, $Res Function(FormApiModel) _then) = _$FormApiModelCopyWithImpl;
@useResult
$Res call({
 String name, String model, String formName
});




}
/// @nodoc
class _$FormApiModelCopyWithImpl<$Res>
    implements $FormApiModelCopyWith<$Res> {
  _$FormApiModelCopyWithImpl(this._self, this._then);

  final FormApiModel _self;
  final $Res Function(FormApiModel) _then;

/// Create a copy of FormApiModel
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


/// Adds pattern-matching-related methods to [FormApiModel].
extension FormApiModelPatterns on FormApiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormApiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormApiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormApiModel value)  $default,){
final _that = this;
switch (_that) {
case _FormApiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormApiModel value)?  $default,){
final _that = this;
switch (_that) {
case _FormApiModel() when $default != null:
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
case _FormApiModel() when $default != null:
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
case _FormApiModel():
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
case _FormApiModel() when $default != null:
return $default(_that.name,_that.model,_that.formName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FormApiModel implements FormApiModel {
   _FormApiModel({required this.name, required this.model, required this.formName});
  factory _FormApiModel.fromJson(Map<String, dynamic> json) => _$FormApiModelFromJson(json);

@override final  String name;
@override final  String model;
@override final  String formName;

/// Create a copy of FormApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormApiModelCopyWith<_FormApiModel> get copyWith => __$FormApiModelCopyWithImpl<_FormApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FormApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormApiModel&&(identical(other.name, name) || other.name == name)&&(identical(other.model, model) || other.model == model)&&(identical(other.formName, formName) || other.formName == formName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,model,formName);

@override
String toString() {
  return 'FormApiModel(name: $name, model: $model, formName: $formName)';
}


}

/// @nodoc
abstract mixin class _$FormApiModelCopyWith<$Res> implements $FormApiModelCopyWith<$Res> {
  factory _$FormApiModelCopyWith(_FormApiModel value, $Res Function(_FormApiModel) _then) = __$FormApiModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String model, String formName
});




}
/// @nodoc
class __$FormApiModelCopyWithImpl<$Res>
    implements _$FormApiModelCopyWith<$Res> {
  __$FormApiModelCopyWithImpl(this._self, this._then);

  final _FormApiModel _self;
  final $Res Function(_FormApiModel) _then;

/// Create a copy of FormApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? model = null,Object? formName = null,}) {
  return _then(_FormApiModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,formName: null == formName ? _self.formName : formName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
