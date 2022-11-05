import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../created_recipe_controller.dart';

class CookTimePickerWidget extends ConsumerWidget {
  CookTimePickerWidget({super.key});

  final List<int> cookTimes = [0, 10, 20, 30, 40, 50, 60, 75, 90, 120];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            cookTimeLabel,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          DropdownButton<int>(
            value: ref.watch(createdRecipeProvider).recipe.cookTime,
            icon: const Icon(Icons.keyboard_arrow_down),
            elevation: 16,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
            underline: Container(
              height: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            onChanged: (int? value) => ref
                .read(createdRecipeProvider.notifier)
                .setCookTime(value ?? 10),
            items: cookTimes.map<DropdownMenuItem<int>>((int value) {
              return DropdownMenuItem<int>(
                value: value,
                child: Text('$value min'),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
