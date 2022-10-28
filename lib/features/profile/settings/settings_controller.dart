import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/services/auth.dart';

import '../../auth/auth_controller.dart';
import '../profile_controller.dart';
import 'settings_model.dart';

final settingsProvider =
    StateNotifierProvider<SettingsController, SettingsModel>(
        (ref) => SettingsController(ref: ref));

class SettingsController extends StateNotifier<SettingsModel> {
  SettingsController({required this.ref}) : super(const SettingsModel());

  final Ref ref;

  Future<void> signOut() async {
    await Auth.instance.signOut();
    ref.read(authProvider.notifier).setRegistering(false);
  }

  String get name => ref.watch(profileProvider).name;

  void setName(String name) => ref.read(profileProvider.notifier).setName(name);

  String get email => ref.watch(profileProvider).email;

  String get handle => ref.watch(profileProvider).handle;

  void setHandle(String handle) =>
      ref.read(profileProvider.notifier).setHandle(handle);

  String get bio => ref.watch(profileProvider).bio;

  void setBio(String bio) => ref.read(profileProvider.notifier).setBio(bio);

  Future<void> saveProfile() async {
    state = state.copyWith(isLoading: true);

    await ref.read(profileProvider.notifier).save();

    state = state.copyWith(isLoading: false);
  }
}
