import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/extensions.dart';

import '../../../../models/allergy.dart';
import '../preferences_controller.dart';

class AllergyOptionsWidget extends ConsumerStatefulWidget {
  const AllergyOptionsWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllergyOptionsWidgetState();
}

class _AllergyOptionsWidgetState extends ConsumerState<AllergyOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    final allergies = ref.watch(preferencesProvider.notifier).allergies;
    final List<Widget> chips = [];
    final allergyOptions = [
      Allergy.dairy,
      Allergy.eggs,
      Allergy.peanuts,
      Allergy.sesame,
      Allergy.shellfish,
      Allergy.soy,
      Allergy.treeNuts,
      Allergy.wheat,
    ];

    for (final allergy in allergyOptions) {
      final allergyName = allergy.name.capitalize();
      final isSelected = allergies.contains(allergy);
      final chip = ChoiceChip(
        label: Text(allergyName == 'TreeNuts' ? 'Tree Nuts' : allergyName),
        selected: isSelected,
        onSelected: (isSelected) => ref
            .read(preferencesProvider.notifier)
            .setAllergy(allergy, isSelected),
      );
      chips.add(chip);
    }

    return Wrap(
      spacing: 12,
      children: chips,
    );
  }
}
