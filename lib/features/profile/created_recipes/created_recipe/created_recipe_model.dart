import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:levelchef/models/recipe.dart';

part 'created_recipe_model.freezed.dart';

@freezed
class CreatedRecipeModel with _$CreatedRecipeModel {
  const factory CreatedRecipeModel({
    required Recipe recipe,
    @Default(false) bool isNew,
    @Default(false) bool isLoading,
  }) = _CreatedRecipeModel;
}
