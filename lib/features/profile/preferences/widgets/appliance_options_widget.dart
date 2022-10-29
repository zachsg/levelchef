import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/extensions.dart';

import '../../../../models/appliance.dart';
import '../preferences_controller.dart';

class ApplianceOptionsWidget extends ConsumerWidget {
  const ApplianceOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appliances = ref.watch(preferencesProvider.notifier).appliances;
    final List<Widget> chips = [];
    final applianceOptions = [
      Appliance.airFryer,
      Appliance.blender,
      Appliance.instantPot,
      Appliance.oven,
      Appliance.stovetop,
      Appliance.foodProcessor,
    ];

    for (final appliance in applianceOptions) {
      final applianceName = appliance.name.capitalize();
      final isSelected = appliances.contains(appliance);
      final chip = ChoiceChip(
        label: Text(applianceName == 'AirFryer'
            ? 'Air Fryer'
            : applianceName == 'InstantPot'
                ? 'Instant Pot'
                : applianceName == 'FoodProcessor'
                    ? 'Food Processor'
                    : applianceName),
        selected: isSelected,
        onSelected: (isSelected) => ref
            .read(preferencesProvider.notifier)
            .setAppliance(appliance, isSelected),
      );
      chips.add(chip);
    }

    return Wrap(
      spacing: 12,
      children: chips,
    );
  }
}
