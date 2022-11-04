// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'created_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatedRecipeModel {
  Recipe get recipe => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatedRecipeModelCopyWith<CreatedRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedRecipeModelCopyWith<$Res> {
  factory $CreatedRecipeModelCopyWith(
          CreatedRecipeModel value, $Res Function(CreatedRecipeModel) then) =
      _$CreatedRecipeModelCopyWithImpl<$Res, CreatedRecipeModel>;
  @useResult
  $Res call({Recipe recipe, bool isNew, bool isLoading});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class _$CreatedRecipeModelCopyWithImpl<$Res, $Val extends CreatedRecipeModel>
    implements $CreatedRecipeModelCopyWith<$Res> {
  _$CreatedRecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? isNew = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreatedRecipeModelCopyWith<$Res>
    implements $CreatedRecipeModelCopyWith<$Res> {
  factory _$$_CreatedRecipeModelCopyWith(_$_CreatedRecipeModel value,
          $Res Function(_$_CreatedRecipeModel) then) =
      __$$_CreatedRecipeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe, bool isNew, bool isLoading});

  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$_CreatedRecipeModelCopyWithImpl<$Res>
    extends _$CreatedRecipeModelCopyWithImpl<$Res, _$_CreatedRecipeModel>
    implements _$$_CreatedRecipeModelCopyWith<$Res> {
  __$$_CreatedRecipeModelCopyWithImpl(
      _$_CreatedRecipeModel _value, $Res Function(_$_CreatedRecipeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? isNew = null,
    Object? isLoading = null,
  }) {
    return _then(_$_CreatedRecipeModel(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreatedRecipeModel implements _CreatedRecipeModel {
  const _$_CreatedRecipeModel(
      {required this.recipe, this.isNew = false, this.isLoading = false});

  @override
  final Recipe recipe;
  @override
  @JsonKey()
  final bool isNew;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CreatedRecipeModel(recipe: $recipe, isNew: $isNew, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatedRecipeModel &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, isNew, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatedRecipeModelCopyWith<_$_CreatedRecipeModel> get copyWith =>
      __$$_CreatedRecipeModelCopyWithImpl<_$_CreatedRecipeModel>(
          this, _$identity);
}

abstract class _CreatedRecipeModel implements CreatedRecipeModel {
  const factory _CreatedRecipeModel(
      {required final Recipe recipe,
      final bool isNew,
      final bool isLoading}) = _$_CreatedRecipeModel;

  @override
  Recipe get recipe;
  @override
  bool get isNew;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CreatedRecipeModelCopyWith<_$_CreatedRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
