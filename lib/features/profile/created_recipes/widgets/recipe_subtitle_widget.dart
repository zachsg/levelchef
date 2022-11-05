import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'xwidgets.dart';

class RecipeSubtitleWidget extends ConsumerWidget {
  const RecipeSubtitleWidget({
    super.key,
    required this.minutes,
    required this.ingredients,
    required this.diets,
    required this.allergies,
  });

  final String minutes;
  final String ingredients;
  final String diets;
  final String allergies;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        RecipeSubtitleValueFirstRowWidget(
          label1: 'min',
          value1: minutes,
          label2: 'ingredients',
          value2: ingredients,
        ),
        RecipeSubtitleLabelFirstRowWidget(
          label1: 'Diets',
          value1: diets,
          label2: 'Allergies',
          value2: allergies,
        ),
      ],
    );
  }
}
