import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/extensions.dart';
import 'package:levelchef/strings.dart';

import '../profile_controller.dart';

class SkillLevelWidget extends ConsumerWidget {
  const SkillLevelWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experienceLabel,
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                ref.read(profileProvider).experience.name.capitalize(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                experiencePointsLabel,
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                '${ref.read(profileProvider).experiencePoints} pts',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
