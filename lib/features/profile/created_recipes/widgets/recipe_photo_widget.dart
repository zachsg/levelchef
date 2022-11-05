import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/models/recipe.dart';

class RecipePhotoWidget extends ConsumerWidget {
  const RecipePhotoWidget({super.key, required this.recipe});

  final Recipe recipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: CachedNetworkImage(
        width: 72,
        height: 72,
        fit: BoxFit.fill,
        imageUrl: recipe.imageUrl,
        placeholder: (context, url) => const Icon(
          Icons.no_food,
          size: 50,
        ),
        errorWidget: (context, url, error) => const Icon(
          Icons.no_food,
          size: 50,
        ),
      ),
    );
  }
}
