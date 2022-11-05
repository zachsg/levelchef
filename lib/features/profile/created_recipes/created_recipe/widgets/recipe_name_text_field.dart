import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../created_recipe_controller.dart';

class RecipeNameTextField extends ConsumerStatefulWidget {
  const RecipeNameTextField({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecipeNameTextFieldState();
}

class _RecipeNameTextFieldState extends ConsumerState<RecipeNameTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
        text: ref.read(createdRecipeProvider).recipe.name);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.text,
        textCapitalization: TextCapitalization.none,
        decoration: const InputDecoration(
          labelText: recipeNameLabel,
        ),
        onChanged: (value) =>
            ref.read(createdRecipeProvider.notifier).setName(value),
      ),
    );
  }
}
