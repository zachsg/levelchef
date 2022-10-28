import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:levelchef/strings.dart';

import 'settings/settings_view.dart';
import 'widgets/xwidgets.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  static const routeName = 'profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(profileLabel),
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(SettingsView.routeName),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ProfileHeaderWidget(),
            SkillLevelWidget(),
            BioWidget(),
            Divider(),
            ProfileDetailsListViewWidget(),
          ],
        ),
      ),
    );
  }
}
