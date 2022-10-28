import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

class CreatedRecipesView extends ConsumerWidget {
  const CreatedRecipesView({super.key});

  static const routeName = 'created_recipes';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createdRecipesLabel),
      ),
    );
  }
}
