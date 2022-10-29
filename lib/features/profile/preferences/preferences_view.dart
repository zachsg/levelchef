import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import 'preferences_controller.dart';
import 'widgets/xwidgets.dart';

class PreferencesView extends ConsumerWidget {
  const PreferencesView({super.key});

  static const routeName = 'preferences';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async {
        if (ref.read(preferencesIsDirtyProvider)) {
          ref.read(preferencesProvider.notifier).saveProfile();
        }

        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(preferencesLabel),
          actions: [
            ref.watch(preferencesProvider).isLoading
                ? const Center(child: CircularProgressIndicator())
                : IconButton(
                    onPressed: () async {
                      final messenger = ScaffoldMessenger.of(context);

                      await ref
                          .read(preferencesProvider.notifier)
                          .saveProfile();

                      messenger.removeCurrentSnackBar();
                      const snackBar =
                          SnackBar(content: Text(profileUpdatedLabel));
                      messenger.showSnackBar(snackBar);
                    },
                    icon: const Icon(Icons.save),
                  ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SectionHeaderWidget(
                  title: pathLabel,
                  subtitle: pathSubtitleLabel,
                ),
                PathOptionsWidget(),
                SizedBox(height: 32),
                SectionHeaderWidget(
                  title: allergiesLabel,
                  subtitle: allergiesSubtitleLabel,
                ),
                AllergyOptionsWidget(),
                SizedBox(height: 32),
                SectionHeaderWidget(
                  title: appliancesLabel,
                  subtitle: appliancesSubtitleLabel,
                ),
                ApplianceOptionsWidget(),
                SizedBox(height: 32),
                SectionHeaderWidget(
                  title: smallWaresLabel,
                  subtitle: smallWaresSubtitleLabel,
                ),
                SmallWareOptionsWidget(),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
