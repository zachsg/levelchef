import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/extensions.dart';
import 'package:levelchef/strings.dart';

import '../preferences_controller.dart';
import '../../../../models/path.dart';

class PathOptionsWidget extends ConsumerWidget {
  const PathOptionsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final path = ref.watch(preferencesProvider.notifier).path;
    final List<Widget> chips = [];
    final pathOptions = [
      Path.family,
      Path.hearty,
      Path.veggie,
      Path.primal,
    ];

    for (final p in pathOptions) {
      final String caption;
      switch (p) {
        case Path.family:
          caption = familyPathCaptionLabel;
          break;
        case Path.hearty:
          caption = heartyPathCaptionLabel;
          break;
        case Path.primal:
          caption = primalPathCaptionLabel;
          break;
        case Path.veggie:
          caption = veggiePathCaptionLabel;
          break;
        default:
          caption = 'none';
      }

      final pathName = p.name.capitalize();
      final isSelected = p == path;
      final chip = Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: ChoiceChip(
          label: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(pathName),
              Text(
                caption,
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          ),
          selected: isSelected,
          onSelected: (isSelected) =>
              ref.read(preferencesProvider.notifier).setPath(p),
        ),
      );
      chips.add(chip);
    }

    return Wrap(
      spacing: 12,
      children: chips,
    );
  }
}
