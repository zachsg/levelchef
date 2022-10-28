import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

class PreferencesView extends ConsumerWidget {
  const PreferencesView({super.key});

  static const routeName = 'preferences';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(preferencesLabel),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
