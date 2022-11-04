import 'package:freezed_annotation/freezed_annotation.dart';

import 'allergy.dart';
import 'appliance.dart';
import 'diet.dart';
import 'ingredient.dart';
import 'recipe_step.dart';
import 'recipe_tag.dart';
import 'recipe_type.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@unfreezed
class Recipe with _$Recipe {
  factory Recipe({
    String? id,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'owner_id') required String ownerId,
    required String name,
    @JsonKey(name: 'image_url') @Default('') String imageUrl,
    @JsonKey(name: 'video_url') @Default('') String videoUrl,
    @Default([]) List<RecipeStep> steps,
    @Default([]) List<Ingredient> ingredients,
    @Default([]) List<Allergy> allergies,
    @Default([]) List<Appliance> appliances,
    @Default([]) List<Diet> diets,
    @JsonKey(name: 'recipe_type') required RecipeType recipeType,
    @JsonKey(name: 'recipe_tags') @Default([]) List<RecipeTag> recipeTags,
    @Default(2) int servings,
    @JsonKey(name: 'cook_time') @Default(20) int cookTime,
    @JsonKey(name: 'prep_time') @Default(10) int prepTime,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
