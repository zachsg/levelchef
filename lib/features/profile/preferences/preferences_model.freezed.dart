// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreferencesModel {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreferencesModelCopyWith<PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesModelCopyWith<$Res> {
  factory $PreferencesModelCopyWith(
          PreferencesModel value, $Res Function(PreferencesModel) then) =
      _$PreferencesModelCopyWithImpl<$Res, PreferencesModel>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$PreferencesModelCopyWithImpl<$Res, $Val extends PreferencesModel>
    implements $PreferencesModelCopyWith<$Res> {
  _$PreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreferencesModelCopyWith<$Res>
    implements $PreferencesModelCopyWith<$Res> {
  factory _$$_PreferencesModelCopyWith(
          _$_PreferencesModel value, $Res Function(_$_PreferencesModel) then) =
      __$$_PreferencesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_PreferencesModelCopyWithImpl<$Res>
    extends _$PreferencesModelCopyWithImpl<$Res, _$_PreferencesModel>
    implements _$$_PreferencesModelCopyWith<$Res> {
  __$$_PreferencesModelCopyWithImpl(
      _$_PreferencesModel _value, $Res Function(_$_PreferencesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_PreferencesModel(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PreferencesModel implements _PreferencesModel {
  const _$_PreferencesModel({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PreferencesModel(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferencesModel &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreferencesModelCopyWith<_$_PreferencesModel> get copyWith =>
      __$$_PreferencesModelCopyWithImpl<_$_PreferencesModel>(this, _$identity);
}

abstract class _PreferencesModel implements PreferencesModel {
  const factory _PreferencesModel({final bool isLoading}) = _$_PreferencesModel;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_PreferencesModelCopyWith<_$_PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
