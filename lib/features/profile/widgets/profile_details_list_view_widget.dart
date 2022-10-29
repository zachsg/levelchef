import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:levelchef/strings.dart';

import '../created_bundles/created_bundles_view.dart';
import '../created_recipes/created_recipes_view.dart';
import '../preferences/preferences_view.dart';

class ProfileDetailsListViewWidget extends ConsumerWidget {
  const ProfileDetailsListViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 8),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            leading: const Icon(Icons.psychology),
            title: const Text(preferencesLabel),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              context.pushNamed(PreferencesView.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: const Text(createdRecipesLabel),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              context.pushNamed(CreatedRecipesView.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.backpack),
            title: const Text(createdBundlesLabel),
            trailing: const Icon(Icons.navigate_next),
            onTap: () {
              context.pushNamed(CreatedBundlesView.routeName);
            },
          ),
        ],
      ),
    );
  }
}
