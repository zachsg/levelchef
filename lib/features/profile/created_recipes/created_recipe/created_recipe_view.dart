import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import 'created_recipe_controller.dart';

class CreatedRecipeView extends ConsumerWidget {
  const CreatedRecipeView({super.key});

  static const routeName = 'created_recipe';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(createdRecipeProvider).recipe;

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name.isEmpty ? newRecipeLabel : recipe.name),
        actions: [
          ref.watch(createdRecipeProvider).isLoading
              ? const Center(child: CircularProgressIndicator())
              : IconButton(
                  onPressed: () async {
                    final messenger = ScaffoldMessenger.of(context);

                    await ref.read(createdRecipeProvider.notifier).save();

                    messenger.removeCurrentSnackBar();
                    const snackBar = SnackBar(content: Text(recipeSavedLabel));
                    messenger.showSnackBar(snackBar);
                  },
                  icon: const Icon(Icons.save),
                ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
