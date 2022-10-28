import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

class DiscoverView extends ConsumerWidget {
  const DiscoverView({super.key});

  static const routeName = 'discover';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(discoverLabel),
      ),
    );
  }
}
