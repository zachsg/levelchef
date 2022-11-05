import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:levelchef/models/recipe.dart';
import 'package:levelchef/models/recipe_type.dart';
import 'package:levelchef/services/auth.dart';
import 'package:levelchef/services/database.dart';
import 'package:levelchef/services/storage.dart';

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

  void setIsNewRecipe(bool isNew) {
    final recipe = Recipe(
      updatedAt: DateTime.now().toIso8601String(),
      ownerId: Auth.instance.currentUser!.uid,
      name: '',
      recipeType: RecipeType.dinner,
    );

    state = state.copyWith(isNew: isNew, recipe: recipe);
  }

  void loadRecipe(Recipe recipe) => state = state.copyWith(recipe: recipe);

  void setName(String name) {
    final recipe = state.recipe.copyWith(name: name);
    state = state.copyWith(recipe: recipe);
  }

  Future<void> choosePhoto() async {
    final ImagePicker picker = ImagePicker();

    try {
      final XFile? file = await picker.pickImage(
        source: ImageSource.gallery,
      );

      if (file != null) {
        state = state.copyWith(isLoading: true);

        final url = await Storage.saveRecipePhoto(file);
        final recipe = state.recipe.copyWith(imageUrl: url);
        state = state.copyWith(recipe: recipe);

        state = state.copyWith(isLoading: false);
      }
    } catch (e) {
      // TODO: Handle file picker error
    }
  }

  void setCookTime(int cookTime) {
    final recipe = state.recipe.copyWith(cookTime: cookTime);
    state = state.copyWith(recipe: recipe);
  }

  void setPrepTime(int prepTime) {
    final recipe = state.recipe.copyWith(prepTime: prepTime);
    state = state.copyWith(recipe: recipe);
  }

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
