import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../created_recipe_controller.dart';

class RecipePhotoWidget extends ConsumerWidget {
  const RecipePhotoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: CachedNetworkImage(
          width: 88,
          height: 88,
          fit: BoxFit.cover,
          imageUrl: ref.watch(createdRecipeProvider).recipe.imageUrl,
          placeholder: (context, url) => Icon(
            Icons.no_food,
            size: 88,
            color: Theme.of(context).colorScheme.primary,
          ),
          errorWidget: (context, url, error) => Icon(
            Icons.error,
            size: 88,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
