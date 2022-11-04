import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../profile_controller.dart';
import 'avatar_display_widget.dart';

class ProfileHeaderWidget extends ConsumerWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const AvatarDisplayWidget(),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ref.watch(profileProvider).name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                '@${ref.watch(profileProvider).handle}',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
