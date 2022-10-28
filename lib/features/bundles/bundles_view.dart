import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

class BundlesView extends ConsumerWidget {
  const BundlesView({super.key});

  static const routeName = 'bundles';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(bundlesLabel),
      ),
    );
  }
}
