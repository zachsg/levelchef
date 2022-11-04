// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'created_recipes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatedRecipesModel {
  Stream<QuerySnapshot<Object?>> get recipeSnapshots =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatedRecipesModelCopyWith<CreatedRecipesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedRecipesModelCopyWith<$Res> {
  factory $CreatedRecipesModelCopyWith(
          CreatedRecipesModel value, $Res Function(CreatedRecipesModel) then) =
      _$CreatedRecipesModelCopyWithImpl<$Res, CreatedRecipesModel>;
  @useResult
  $Res call({Stream<QuerySnapshot<Object?>> recipeSnapshots});
}

/// @nodoc
class _$CreatedRecipesModelCopyWithImpl<$Res, $Val extends CreatedRecipesModel>
    implements $CreatedRecipesModelCopyWith<$Res> {
  _$CreatedRecipesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeSnapshots = null,
  }) {
    return _then(_value.copyWith(
      recipeSnapshots: null == recipeSnapshots
          ? _value.recipeSnapshots
          : recipeSnapshots // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Object?>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatedRecipesModelCopyWith<$Res>
    implements $CreatedRecipesModelCopyWith<$Res> {
  factory _$$_CreatedRecipesModelCopyWith(_$_CreatedRecipesModel value,
          $Res Function(_$_CreatedRecipesModel) then) =
      __$$_CreatedRecipesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Stream<QuerySnapshot<Object?>> recipeSnapshots});
}

/// @nodoc
class __$$_CreatedRecipesModelCopyWithImpl<$Res>
    extends _$CreatedRecipesModelCopyWithImpl<$Res, _$_CreatedRecipesModel>
    implements _$$_CreatedRecipesModelCopyWith<$Res> {
  __$$_CreatedRecipesModelCopyWithImpl(_$_CreatedRecipesModel _value,
      $Res Function(_$_CreatedRecipesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeSnapshots = null,
  }) {
    return _then(_$_CreatedRecipesModel(
      recipeSnapshots: null == recipeSnapshots
          ? _value.recipeSnapshots
          : recipeSnapshots // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Object?>>,
    ));
  }
}

/// @nodoc

class _$_CreatedRecipesModel implements _CreatedRecipesModel {
  const _$_CreatedRecipesModel({this.recipeSnapshots = const Stream.empty()});

  @override
  @JsonKey()
  final Stream<QuerySnapshot<Object?>> recipeSnapshots;

  @override
  String toString() {
    return 'CreatedRecipesModel(recipeSnapshots: $recipeSnapshots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatedRecipesModel &&
            (identical(other.recipeSnapshots, recipeSnapshots) ||
                other.recipeSnapshots == recipeSnapshots));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeSnapshots);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatedRecipesModelCopyWith<_$_CreatedRecipesModel> get copyWith =>
      __$$_CreatedRecipesModelCopyWithImpl<_$_CreatedRecipesModel>(
          this, _$identity);
}

abstract class _CreatedRecipesModel implements CreatedRecipesModel {
  const factory _CreatedRecipesModel(
          {final Stream<QuerySnapshot<Object?>> recipeSnapshots}) =
      _$_CreatedRecipesModel;

  @override
  Stream<QuerySnapshot<Object?>> get recipeSnapshots;
  @override
  @JsonKey(ignore: true)
  _$$_CreatedRecipesModelCopyWith<_$_CreatedRecipesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
