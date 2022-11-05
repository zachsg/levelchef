import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../created_recipe_controller.dart';

class PrepTimePickerWidget extends ConsumerWidget {
  PrepTimePickerWidget({super.key});

  final List<int> prepTimes = [0, 10, 20, 30, 40, 50, 60, 75, 90, 120];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            prepTimeLabel,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          DropdownButton<int>(
            value: ref.watch(createdRecipeProvider).recipe.prepTime,
            icon: const Icon(Icons.keyboard_arrow_down),
            elevation: 16,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
            underline: Container(
              height: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            onChanged: (int? value) => ref
                .read(createdRecipeProvider.notifier)
                .setPrepTime(value ?? 10),
            items: prepTimes.map<DropdownMenuItem<int>>((int value) {
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
