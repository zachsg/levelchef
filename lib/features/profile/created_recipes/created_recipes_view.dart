import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:levelchef/models/recipe.dart';
import 'package:levelchef/strings.dart';

import 'created_recipe/created_recipe_view.dart';
import 'created_recipes_controller.dart';

class CreatedRecipesView extends ConsumerStatefulWidget {
  const CreatedRecipesView({super.key});

  static const routeName = 'created_recipes';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreatedRecipesViewState();
}

class _CreatedRecipesViewState extends ConsumerState<CreatedRecipesView> {
  @override
  void initState() {
    super.initState();
    // ref.read(createdRecipesProvider.notifier).setupRecipesStream();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createdRecipesLabel),
      ),
      body: StreamBuilder(
        stream: ref.watch(createdRecipesProvider).recipeSnapshots,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot doc = snapshot.data!.docs[index];
                final recipe =
                    Recipe.fromJson(doc.data() as Map<String, dynamic>);

                return ListTile(
                  title: Text(recipe.name),
                  onTap: () {
                    ref
                        .read(createdRecipesProvider.notifier)
                        .loadRecipe(recipe);
                    context.pushNamed(CreatedRecipeView.routeName);
                  },
                );
              },
            );
          } else {
            return _emptyState(context);
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ref.read(createdRecipesProvider.notifier).setIsNewRecipe(true);
          context.pushNamed(CreatedRecipeView.routeName);
        },
        label: const Text(recipeLabel),
        icon: const Icon(Icons.add),
      ),
    );
  }

  Widget _emptyState(BuildContext context) {
    return Center(
      child: Text(
        noRecipeCreatedLabel,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
