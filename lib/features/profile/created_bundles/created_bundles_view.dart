import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

class CreatedBundlesView extends ConsumerWidget {
  const CreatedBundlesView({super.key});

  static const routeName = 'created_bundles';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createdBundlesLabel),
      ),
    );
  }
}
