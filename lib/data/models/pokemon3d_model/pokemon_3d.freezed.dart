// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_3d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Pokemon3dModel {
  int get id => throw _privateConstructorUsedError;
  List<PokemonForm> get forms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Pokemon3dModelCopyWith<Pokemon3dModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Pokemon3dModelCopyWith<$Res> {
  factory $Pokemon3dModelCopyWith(
          Pokemon3dModel value, $Res Function(Pokemon3dModel) then) =
      _$Pokemon3dModelCopyWithImpl<$Res, Pokemon3dModel>;
  @useResult
  $Res call({int id, List<PokemonForm> forms});
}

/// @nodoc
class _$Pokemon3dModelCopyWithImpl<$Res, $Val extends Pokemon3dModel>
    implements $Pokemon3dModelCopyWith<$Res> {
  _$Pokemon3dModelCopyWithImpl(this._value, this._then);

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
              as List<PokemonForm>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Pokemon3dApiModelImplCopyWith<$Res>
    implements $Pokemon3dModelCopyWith<$Res> {
  factory _$$Pokemon3dApiModelImplCopyWith(_$Pokemon3dApiModelImpl value,
          $Res Function(_$Pokemon3dApiModelImpl) then) =
      __$$Pokemon3dApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<PokemonForm> forms});
}

/// @nodoc
class __$$Pokemon3dApiModelImplCopyWithImpl<$Res>
    extends _$Pokemon3dModelCopyWithImpl<$Res, _$Pokemon3dApiModelImpl>
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
              as List<PokemonForm>,
    ));
  }
}

/// @nodoc

class _$Pokemon3dApiModelImpl implements _Pokemon3dApiModel {
  _$Pokemon3dApiModelImpl(
      {required this.id, required final List<PokemonForm> forms})
      : _forms = forms;

  @override
  final int id;
  final List<PokemonForm> _forms;
  @override
  List<PokemonForm> get forms {
    if (_forms is EqualUnmodifiableListView) return _forms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forms);
  }

  @override
  String toString() {
    return 'Pokemon3dModel(id: $id, forms: $forms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Pokemon3dApiModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._forms, _forms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_forms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Pokemon3dApiModelImplCopyWith<_$Pokemon3dApiModelImpl> get copyWith =>
      __$$Pokemon3dApiModelImplCopyWithImpl<_$Pokemon3dApiModelImpl>(
          this, _$identity);
}

abstract class _Pokemon3dApiModel implements Pokemon3dModel {
  factory _Pokemon3dApiModel(
      {required final int id,
      required final List<PokemonForm> forms}) = _$Pokemon3dApiModelImpl;

  @override
  int get id;
  @override
  List<PokemonForm> get forms;
  @override
  @JsonKey(ignore: true)
  _$$Pokemon3dApiModelImplCopyWith<_$Pokemon3dApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokemonForm {
  String get name => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get formName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonFormCopyWith<PokemonForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFormCopyWith<$Res> {
  factory $PokemonFormCopyWith(
          PokemonForm value, $Res Function(PokemonForm) then) =
      _$PokemonFormCopyWithImpl<$Res, PokemonForm>;
  @useResult
  $Res call({String name, String model, String formName});
}

/// @nodoc
class _$PokemonFormCopyWithImpl<$Res, $Val extends PokemonForm>
    implements $PokemonFormCopyWith<$Res> {
  _$PokemonFormCopyWithImpl(this._value, this._then);

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
abstract class _$$PokemonFormImplCopyWith<$Res>
    implements $PokemonFormCopyWith<$Res> {
  factory _$$PokemonFormImplCopyWith(
          _$PokemonFormImpl value, $Res Function(_$PokemonFormImpl) then) =
      __$$PokemonFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String model, String formName});
}

/// @nodoc
class __$$PokemonFormImplCopyWithImpl<$Res>
    extends _$PokemonFormCopyWithImpl<$Res, _$PokemonFormImpl>
    implements _$$PokemonFormImplCopyWith<$Res> {
  __$$PokemonFormImplCopyWithImpl(
      _$PokemonFormImpl _value, $Res Function(_$PokemonFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? model = null,
    Object? formName = null,
  }) {
    return _then(_$PokemonFormImpl(
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

class _$PokemonFormImpl implements _PokemonForm {
  _$PokemonFormImpl(
      {required this.name, required this.model, required this.formName});

  @override
  final String name;
  @override
  final String model;
  @override
  final String formName;

  @override
  String toString() {
    return 'PokemonForm(name: $name, model: $model, formName: $formName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonFormImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.formName, formName) ||
                other.formName == formName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, model, formName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonFormImplCopyWith<_$PokemonFormImpl> get copyWith =>
      __$$PokemonFormImplCopyWithImpl<_$PokemonFormImpl>(this, _$identity);
}

abstract class _PokemonForm implements PokemonForm {
  factory _PokemonForm(
      {required final String name,
      required final String model,
      required final String formName}) = _$PokemonFormImpl;

  @override
  String get name;
  @override
  String get model;
  @override
  String get formName;
  @override
  @JsonKey(ignore: true)
  _$$PokemonFormImplCopyWith<_$PokemonFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
