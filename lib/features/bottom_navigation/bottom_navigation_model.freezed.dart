// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavigationModel {
  int get tabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationModelCopyWith<BottomNavigationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationModelCopyWith<$Res> {
  factory $BottomNavigationModelCopyWith(BottomNavigationModel value,
          $Res Function(BottomNavigationModel) then) =
      _$BottomNavigationModelCopyWithImpl<$Res, BottomNavigationModel>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$BottomNavigationModelCopyWithImpl<$Res,
        $Val extends BottomNavigationModel>
    implements $BottomNavigationModelCopyWith<$Res> {
  _$BottomNavigationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavigationModelCopyWith<$Res>
    implements $BottomNavigationModelCopyWith<$Res> {
  factory _$$_BottomNavigationModelCopyWith(_$_BottomNavigationModel value,
          $Res Function(_$_BottomNavigationModel) then) =
      __$$_BottomNavigationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$_BottomNavigationModelCopyWithImpl<$Res>
    extends _$BottomNavigationModelCopyWithImpl<$Res, _$_BottomNavigationModel>
    implements _$$_BottomNavigationModelCopyWith<$Res> {
  __$$_BottomNavigationModelCopyWithImpl(_$_BottomNavigationModel _value,
      $Res Function(_$_BottomNavigationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$_BottomNavigationModel(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationModel implements _BottomNavigationModel {
  const _$_BottomNavigationModel({required this.tabIndex});

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'BottomNavigationModel(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavigationModel &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavigationModelCopyWith<_$_BottomNavigationModel> get copyWith =>
      __$$_BottomNavigationModelCopyWithImpl<_$_BottomNavigationModel>(
          this, _$identity);
}

abstract class _BottomNavigationModel implements BottomNavigationModel {
  const factory _BottomNavigationModel({required final int tabIndex}) =
      _$_BottomNavigationModel;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavigationModelCopyWith<_$_BottomNavigationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
