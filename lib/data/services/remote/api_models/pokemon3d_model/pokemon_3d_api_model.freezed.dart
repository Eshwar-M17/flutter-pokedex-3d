// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_3d_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pokemon3dApiModel _$Pokemon3dApiModelFromJson(Map<String, dynamic> json) {
  return _Pokemon3dApiModel.fromJson(json);
}

/// @nodoc
mixin _$Pokemon3dApiModel {
  int get id => throw _privateConstructorUsedError;
  List<FormApiModel> get forms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Pokemon3dApiModelCopyWith<Pokemon3dApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Pokemon3dApiModelCopyWith<$Res> {
  factory $Pokemon3dApiModelCopyWith(
          Pokemon3dApiModel value, $Res Function(Pokemon3dApiModel) then) =
      _$Pokemon3dApiModelCopyWithImpl<$Res, Pokemon3dApiModel>;
  @useResult
  $Res call({int id, List<FormApiModel> forms});
}

/// @nodoc
class _$Pokemon3dApiModelCopyWithImpl<$Res, $Val extends Pokemon3dApiModel>
    implements $Pokemon3dApiModelCopyWith<$Res> {
  _$Pokemon3dApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? forms = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<FormApiModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Pokemon3dApiModelImplCopyWith<$Res>
    implements $Pokemon3dApiModelCopyWith<$Res> {
  factory _$$Pokemon3dApiModelImplCopyWith(_$Pokemon3dApiModelImpl value,
          $Res Function(_$Pokemon3dApiModelImpl) then) =
      __$$Pokemon3dApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<FormApiModel> forms});
}

/// @nodoc
class __$$Pokemon3dApiModelImplCopyWithImpl<$Res>
    extends _$Pokemon3dApiModelCopyWithImpl<$Res, _$Pokemon3dApiModelImpl>
    implements _$$Pokemon3dApiModelImplCopyWith<$Res> {
  __$$Pokemon3dApiModelImplCopyWithImpl(_$Pokemon3dApiModelImpl _value,
      $Res Function(_$Pokemon3dApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? forms = null,
  }) {
    return _then(_$Pokemon3dApiModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      forms: null == forms
          ? _value._forms
          : forms // ignore: cast_nullable_to_non_nullable
              as List<FormApiModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Pokemon3dApiModelImpl implements _Pokemon3dApiModel {
  _$Pokemon3dApiModelImpl(
      {required this.id, required final List<FormApiModel> forms})
      : _forms = forms;

  factory _$Pokemon3dApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$Pokemon3dApiModelImplFromJson(json);

  @override
  final int id;
  final List<FormApiModel> _forms;
  @override
  List<FormApiModel> get forms {
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forms);
  }

  @override
  String toString() {
    return 'Pokemon3dApiModel(id: $id, forms: $forms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Pokemon3dApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._forms, _forms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_forms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Pokemon3dApiModelImplCopyWith<_$Pokemon3dApiModelImpl> get copyWith =>
      __$$Pokemon3dApiModelImplCopyWithImpl<_$Pokemon3dApiModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Pokemon3dApiModelImplToJson(
      this,
    );
  }
}

abstract class _Pokemon3dApiModel implements Pokemon3dApiModel {
  factory _Pokemon3dApiModel(
      {required final int id,
      required final List<FormApiModel> forms}) = _$Pokemon3dApiModelImpl;

  factory _Pokemon3dApiModel.fromJson(Map<String, dynamic> json) =
      _$Pokemon3dApiModelImpl.fromJson;

  @override
  int get id;
  @override
  List<FormApiModel> get forms;
  @override
  @JsonKey(ignore: true)
  _$$Pokemon3dApiModelImplCopyWith<_$Pokemon3dApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormApiModel _$FormApiModelFromJson(Map<String, dynamic> json) {
  return _FormApiModel.fromJson(json);
}

/// @nodoc
mixin _$FormApiModel {
  String get name => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get formName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormApiModelCopyWith<FormApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormApiModelCopyWith<$Res> {
  factory $FormApiModelCopyWith(
          FormApiModel value, $Res Function(FormApiModel) then) =
      _$FormApiModelCopyWithImpl<$Res, FormApiModel>;
  @useResult
  $Res call({String name, String model, String formName});
}

/// @nodoc
class _$FormApiModelCopyWithImpl<$Res, $Val extends FormApiModel>
    implements $FormApiModelCopyWith<$Res> {
  _$FormApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
    Object? formName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      formName: null == formName
          ? _value.formName
          : formName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormApiModelImplCopyWith<$Res>
    implements $FormApiModelCopyWith<$Res> {
  factory _$$FormApiModelImplCopyWith(
          _$FormApiModelImpl value, $Res Function(_$FormApiModelImpl) then) =
      __$$FormApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String model, String formName});
}

/// @nodoc
class __$$FormApiModelImplCopyWithImpl<$Res>
    extends _$FormApiModelCopyWithImpl<$Res, _$FormApiModelImpl>
    implements _$$FormApiModelImplCopyWith<$Res> {
  __$$FormApiModelImplCopyWithImpl(
      _$FormApiModelImpl _value, $Res Function(_$FormApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
    Object? formName = null,
  }) {
    return _then(_$FormApiModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      formName: null == formName
          ? _value.formName
          : formName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormApiModelImpl implements _FormApiModel {
  _$FormApiModelImpl(
      {required this.name, required this.model, required this.formName});

  factory _$FormApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormApiModelImplFromJson(json);

  @override
  final String name;
  @override
  final String model;
  @override
  final String formName;

  @override
  String toString() {
    return 'FormApiModel(name: $name, model: $model, formName: $formName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormApiModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.formName, formName) ||
                other.formName == formName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, model, formName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormApiModelImplCopyWith<_$FormApiModelImpl> get copyWith =>
      __$$FormApiModelImplCopyWithImpl<_$FormApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormApiModelImplToJson(
      this,
    );
  }
}

abstract class _FormApiModel implements FormApiModel {
  factory _FormApiModel(
      {required final String name,
      required final String model,
      required final String formName}) = _$FormApiModelImpl;

  factory _FormApiModel.fromJson(Map<String, dynamic> json) =
      _$FormApiModelImpl.fromJson;

  @override
  String get name;
  @override
  String get model;
  @override
  String get formName;
  @override
  @JsonKey(ignore: true)
  _$$FormApiModelImplCopyWith<_$FormApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
