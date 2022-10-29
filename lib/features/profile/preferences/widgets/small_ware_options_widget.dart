import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/extensions.dart';

import '../../../../models/small_ware.dart';
import '../preferences_controller.dart';

class SmallWareOptionsWidget extends ConsumerWidget {
  const SmallWareOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final smallWares = ref.watch(preferencesProvider.notifier).smallWares;
    final List<Widget> chips = [];
    final smallWareOptions = [
      SmallWare.bakingSheet,
      SmallWare.mortarAndPestle,
      SmallWare.pans,
      SmallWare.pots
    ];

    for (final smallWare in smallWareOptions) {
      final smallWareName = smallWare.name.capitalize();
      final isSelected = smallWares.contains(smallWare);
      final chip = ChoiceChip(
        label: Text(smallWareName == 'BakingSheet'
            ? 'Baking Sheet'
            : smallWareName == 'MortarAndPestle'
                ? 'Mortar & Pestle'
                : smallWareName),
        selected: isSelected,
        onSelected: (isSelected) => ref
            .read(preferencesProvider.notifier)
            .setSmallWare(smallWare, isSelected),
      );
      chips.add(chip);
    }
    return Wrap(
      spacing: 12,
      children: chips,
    );
  }
}
