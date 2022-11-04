import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/models/recipe.dart';
import 'package:levelchef/models/recipe_type.dart';
import 'package:levelchef/services/auth.dart';
import 'package:levelchef/services/database.dart';

import 'created_recipe_model.dart';

final createdRecipeProvider =
    StateNotifierProvider<CreatedRecipeController, CreatedRecipeModel>(
        (ref) => CreatedRecipeController(ref: ref));

class CreatedRecipeController extends StateNotifier<CreatedRecipeModel> {
  CreatedRecipeController({required this.ref})
      : super(
          CreatedRecipeModel(
            recipe: Recipe(
              updatedAt: DateTime.now().toIso8601String(),
              ownerId: Auth.instance.currentUser!.uid,
              name: '',
              recipeType: RecipeType.dinner,
            ),
          ),
        );

  final Ref ref;

  void setIsNewRecipe(bool isNew) => state = state.copyWith(isNew: isNew);

  void loadRecipe(Recipe recipe) => state = state.copyWith(recipe: recipe);

  Future<void> save() async {
    state = state.copyWith(isLoading: true);

    if (state.isNew) {
      // Create and set new random ID for the recipe.
      final id = _getRandomString(15);
      final recipe = state.recipe.copyWith(id: id);
      state = state.copyWith(recipe: recipe);

      await Database.createRecipe(id, state.recipe.toJson());
    } else {
      // Update timestamp of when recipe last modified.
      final updatedAt = DateTime.now().toIso8601String();
      final recipe = state.recipe.copyWith(updatedAt: updatedAt);
      state = state.copyWith(recipe: recipe);

      await Database.updateRecipe(state.recipe.id!, state.recipe.toJson());
    }

    state = state.copyWith(isLoading: false);
  }

  final _chars = '0123456789';
  final Random _rnd = Random();
  String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
