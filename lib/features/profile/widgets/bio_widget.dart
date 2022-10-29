import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../profile_controller.dart';

class BioWidget extends ConsumerWidget {
  const BioWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Text(ref.watch(profileProvider).bio),
    );
  }
}
