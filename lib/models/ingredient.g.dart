// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      id: json['id'] as int,
      name: json['name'] as String,
      category: $enumDecode(_$IngredientCategoryEnumMap, json['category']),
      quantity: (json['quantity'] as num?)?.toDouble() ?? 0.0,
      measurement: $enumDecodeNullable(
              _$IngredientMeasurementEnumMap, json['measurement']) ??
          IngredientMeasurement.g,
      preparationMethod: json['preparation_method'] as String? ?? '',
      isOptional: json['is_optional'] ?? false,
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$IngredientCategoryEnumMap[instance.category]!,
      'quantity': instance.quantity,
      'measurement': _$IngredientMeasurementEnumMap[instance.measurement]!,
      'preparation_method': instance.preparationMethod,
      'is_optional': instance.isOptional,
    };

const _$IngredientCategoryEnumMap = {
  IngredientCategory.grains: 'grains',
  IngredientCategory.grainAlernatives: 'grainAlernatives',
  IngredientCategory.pasta: 'pasta',
  IngredientCategory.oils: 'oils',
  IngredientCategory.eggs: 'eggs',
  IngredientCategory.dairy: 'dairy',
  IngredientCategory.dairyAlternative: 'dairyAlternative',
  IngredientCategory.meat: 'meat',
  IngredientCategory.meatAlternative: 'meatAlternative',
  IngredientCategory.fish: 'fish',
  IngredientCategory.vegetables: 'vegetables',
  IngredientCategory.fruit: 'fruit',
  IngredientCategory.condiments: 'condiments',
  IngredientCategory.sauces: 'sauces',
  IngredientCategory.dressings: 'dressings',
  IngredientCategory.nuts: 'nuts',
  IngredientCategory.seeds: 'seeds',
  IngredientCategory.beans: 'beans',
  IngredientCategory.spices: 'spices',
  IngredientCategory.sweeteners: 'sweeteners',
  IngredientCategory.misc: 'misc',
};

const _$IngredientMeasurementEnumMap = {
  IngredientMeasurement.tbsp: 'tbsp',
  IngredientMeasurement.tsp: 'tsp',
  IngredientMeasurement.lb: 'lb',
  IngredientMeasurement.oz: 'oz',
  IngredientMeasurement.cup: 'cup',
  IngredientMeasurement.g: 'g',
  IngredientMeasurement.mg: 'mg',
  IngredientMeasurement.pinch: 'pinch',
  IngredientMeasurement.toTaste: 'toTaste',
  IngredientMeasurement.ingredient: 'ingredient',
};
