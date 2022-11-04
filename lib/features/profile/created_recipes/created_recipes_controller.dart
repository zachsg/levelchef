import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/models/recipe.dart';
import 'package:levelchef/services/database.dart';

import 'created_recipe/created_recipe_controller.dart';
import 'created_recipes_model.dart';

final createdRecipesProvider =
    StateNotifierProvider<CreatedRecipesController, CreatedRecipesModel>(
        (ref) => CreatedRecipesController(ref: ref));

class CreatedRecipesController extends StateNotifier<CreatedRecipesModel> {
  CreatedRecipesController({required this.ref})
      : super(const CreatedRecipesModel());

  final Ref ref;

  void setIsNewRecipe(bool isNew) =>
      ref.read(createdRecipeProvider.notifier).setIsNewRecipe(isNew);

  void loadRecipe(Recipe recipe) =>
      ref.read(createdRecipeProvider.notifier).loadRecipe(recipe);

  void setupRecipesStream() {
    final stream = Database.createdRecipes();
    state = state.copyWith(recipeSnapshots: stream);
  }
}
