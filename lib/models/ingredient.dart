import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient_category.dart';
import 'ingredient_measurement.dart';

part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required int id,
    required String name,
    required IngredientCategory category,
    @Default(0.0) double quantity,
    @Default(IngredientMeasurement.g) IngredientMeasurement measurement,
    @JsonKey(name: 'preparation_method') @Default('') String preparationMethod,
    @JsonKey(name: 'is_optional') @Default(false) isOptional,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
