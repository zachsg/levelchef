// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  IngredientCategory get category => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  IngredientMeasurement get measurement => throw _privateConstructorUsedError;
  @JsonKey(name: 'preparation_method')
  String get preparationMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_optional')
  dynamic get isOptional => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
  @useResult
  $Res call(
      {int id,
      String name,
      IngredientCategory category,
      double quantity,
      IngredientMeasurement measurement,
      @JsonKey(name: 'preparation_method') String preparationMethod,
      @JsonKey(name: 'is_optional') dynamic isOptional});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? quantity = null,
    Object? measurement = null,
    Object? preparationMethod = null,
    Object? isOptional = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as IngredientCategory,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      measurement: null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as IngredientMeasurement,
      preparationMethod: null == preparationMethod
          ? _value.preparationMethod
          : preparationMethod // ignore: cast_nullable_to_non_nullable
              as String,
      isOptional: null == isOptional
          ? _value.isOptional
          : isOptional // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$_IngredientCopyWith(
          _$_Ingredient value, $Res Function(_$_Ingredient) then) =
      __$$_IngredientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      IngredientCategory category,
      double quantity,
      IngredientMeasurement measurement,
      @JsonKey(name: 'preparation_method') String preparationMethod,
      @JsonKey(name: 'is_optional') dynamic isOptional});
}

/// @nodoc
class __$$_IngredientCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$_Ingredient>
    implements _$$_IngredientCopyWith<$Res> {
  __$$_IngredientCopyWithImpl(
      _$_Ingredient _value, $Res Function(_$_Ingredient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? quantity = null,
    Object? measurement = null,
    Object? preparationMethod = null,
    Object? isOptional = null,
  }) {
    return _then(_$_Ingredient(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as IngredientCategory,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      measurement: null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as IngredientMeasurement,
      preparationMethod: null == preparationMethod
          ? _value.preparationMethod
          : preparationMethod // ignore: cast_nullable_to_non_nullable
              as String,
      isOptional: null == isOptional ? _value.isOptional : isOptional,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredient implements _Ingredient {
  const _$_Ingredient(
      {required this.id,
      required this.name,
      required this.category,
      this.quantity = 0.0,
      this.measurement = IngredientMeasurement.g,
      @JsonKey(name: 'preparation_method') this.preparationMethod = '',
      @JsonKey(name: 'is_optional') this.isOptional = false});

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final IngredientCategory category;
  @override
  @JsonKey()
  final double quantity;
  @override
  @JsonKey()
  final IngredientMeasurement measurement;
  @override
  @JsonKey(name: 'preparation_method')
  final String preparationMethod;
  @override
  @JsonKey(name: 'is_optional')
  final dynamic isOptional;

  @override
  String toString() {
    return 'Ingredient(id: $id, name: $name, category: $category, quantity: $quantity, measurement: $measurement, preparationMethod: $preparationMethod, isOptional: $isOptional)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ingredient &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement) &&
            (identical(other.preparationMethod, preparationMethod) ||
                other.preparationMethod == preparationMethod) &&
            const DeepCollectionEquality()
                .equals(other.isOptional, isOptional));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      category,
      quantity,
      measurement,
      preparationMethod,
      const DeepCollectionEquality().hash(isOptional));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      __$$_IngredientCopyWithImpl<_$_Ingredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientToJson(
      this,
    );
  }
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {required final int id,
      required final String name,
      required final IngredientCategory category,
      final double quantity,
      final IngredientMeasurement measurement,
      @JsonKey(name: 'preparation_method') final String preparationMethod,
      @JsonKey(name: 'is_optional') final dynamic isOptional}) = _$_Ingredient;

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  IngredientCategory get category;
  @override
  double get quantity;
  @override
  IngredientMeasurement get measurement;
  @override
  @JsonKey(name: 'preparation_method')
  String get preparationMethod;
  @override
  @JsonKey(name: 'is_optional')
  dynamic get isOptional;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
