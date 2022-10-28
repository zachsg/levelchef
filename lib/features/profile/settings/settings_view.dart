import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:levelchef/strings.dart';

import '../../auth/auth_gate.dart';
import 'settings_controller.dart';
import 'widgets/xwidgets.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  static const routeName = 'settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(settingsLabel),
        actions: [
          ref.watch(settingsProvider).isLoading
              ? const Center(child: CircularProgressIndicator())
              : IconButton(
                  onPressed: () async {
                    final messenger = ScaffoldMessenger.of(context);

                    await ref.read(settingsProvider.notifier).saveProfile();

                    messenger.removeCurrentSnackBar();
                    const snackBar =
                        SnackBar(content: Text(profileUpdatedLabel));
                    messenger.showSnackBar(snackBar);
                  },
                  icon: const Icon(Icons.save),
                ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ref.read(settingsProvider.notifier).email,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const NameTextFieldWidget(),
            const HandleTextFieldWidget(),
            const BioTextFieldWidget(),
            const Spacer(),
            TextButton(
              onPressed: () async {
                final goRouter = GoRouter.of(context);
                await ref.read(settingsProvider.notifier).signOut();
                goRouter.goNamed(AuthGate.routeName);
              },
              child: const Text(signOutLabel),
            ),
          ],
        ),
      ),
    );
  }
}
