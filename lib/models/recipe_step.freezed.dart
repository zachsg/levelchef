// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeStep _$RecipeStepFromJson(Map<String, dynamic> json) {
  return _RecipeStep.fromJson(json);
}

/// @nodoc
mixin _$RecipeStep {
  String get step => throw _privateConstructorUsedError;
  set step(String value) => throw _privateConstructorUsedError;
  String get tip => throw _privateConstructorUsedError;
  set tip(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeStepCopyWith<RecipeStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStepCopyWith<$Res> {
  factory $RecipeStepCopyWith(
          RecipeStep value, $Res Function(RecipeStep) then) =
      _$RecipeStepCopyWithImpl<$Res, RecipeStep>;
  @useResult
  $Res call({String step, String tip});
}

/// @nodoc
class _$RecipeStepCopyWithImpl<$Res, $Val extends RecipeStep>
    implements $RecipeStepCopyWith<$Res> {
  _$RecipeStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? tip = null,
  }) {
    return _then(_value.copyWith(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeStepCopyWith<$Res>
    implements $RecipeStepCopyWith<$Res> {
  factory _$$_RecipeStepCopyWith(
          _$_RecipeStep value, $Res Function(_$_RecipeStep) then) =
      __$$_RecipeStepCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String step, String tip});
}

/// @nodoc
class __$$_RecipeStepCopyWithImpl<$Res>
    extends _$RecipeStepCopyWithImpl<$Res, _$_RecipeStep>
    implements _$$_RecipeStepCopyWith<$Res> {
  __$$_RecipeStepCopyWithImpl(
      _$_RecipeStep _value, $Res Function(_$_RecipeStep) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? tip = null,
  }) {
    return _then(_$_RecipeStep(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      tip: null == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeStep implements _RecipeStep {
  _$_RecipeStep({required this.step, this.tip = ''});

  factory _$_RecipeStep.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeStepFromJson(json);

  @override
  String step;
  @override
  @JsonKey()
  String tip;

  @override
  String toString() {
    return 'RecipeStep(step: $step, tip: $tip)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeStepCopyWith<_$_RecipeStep> get copyWith =>
      __$$_RecipeStepCopyWithImpl<_$_RecipeStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeStepToJson(
      this,
    );
  }
}

abstract class _RecipeStep implements RecipeStep {
  factory _RecipeStep({required String step, String tip}) = _$_RecipeStep;

  factory _RecipeStep.fromJson(Map<String, dynamic> json) =
      _$_RecipeStep.fromJson;

  @override
  String get step;
  set step(String value);
  @override
  String get tip;
  set tip(String value);
  @override
  @JsonKey(ignore: true)
  _$$_RecipeStepCopyWith<_$_RecipeStep> get copyWith =>
      throw _privateConstructorUsedError;
}
