import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/services/database.dart';

import 'profile_model.dart';

final profileProvider = StateNotifierProvider<ProfileController, ProfileModel>(
    (_) => ProfileController());

class ProfileController extends StateNotifier<ProfileModel> {
  ProfileController() : super(const ProfileModel());

  Future<void> load() async {
    final profileJson = await Database.currentProfile();
    if (profileJson.exists) {
      state = ProfileModel.fromJson(profileJson.data()!);
    }
  }

  Future<void> create() async {
    await Database.createProfile(state.toJson());
  }

  Future<void> save() async {
    await Database.updateProfile(state.toJson());
  }

  void setName(String name) => state = state.copyWith(name: name);

  void setEmail(String email) => state = state.copyWith(email: email);

  void setHandle(String handle) => state = state.copyWith(handle: handle);

  void setBio(String bio) => state = state.copyWith(bio: bio);
}
