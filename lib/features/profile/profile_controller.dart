import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:levelchef/services/database.dart';
import 'package:levelchef/services/storage.dart';

import '../../models/allergy.dart';
import '../../models/appliance.dart';
import '../../models/path.dart';
import '../../models/small_ware.dart';
import 'created_recipes/created_recipes_controller.dart';
import 'profile_model.dart';

final profileProvider = StateNotifierProvider<ProfileController, ProfileModel>(
    (ref) => ProfileController(ref: ref));

class ProfileController extends StateNotifier<ProfileModel> {
  ProfileController({required this.ref}) : super(const ProfileModel());

  final Ref ref;

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

  Future<void> setAvatar(XFile file) async {
    final url = await Storage.saveAvatar(file);
    state = state.copyWith(avatar: url);
  }

  void setHandle(String handle) => state = state.copyWith(handle: handle);

  void setBio(String bio) => state = state.copyWith(bio: bio);

  void setPath(Path path) => state = state.copyWith(path: path);

  void setAllergy(Allergy allergy, bool isSelected) {
    List<Allergy> allergies = List.from(state.allergies);
    if (allergies.contains(allergy)) {
      allergies.removeWhere((a) => a == allergy);
    } else {
      allergies.add(allergy);
    }

    state = state.copyWith(allergies: allergies);
  }

  void setAppliance(Appliance appliance, bool isSelected) {
    List<Appliance> appliances = List.from(state.appliances);
    if (appliances.contains(appliance)) {
      appliances.removeWhere((a) => a == appliance);
    } else {
      appliances.add(appliance);
    }

    state = state.copyWith(appliances: appliances);
  }

  void setSmallWare(SmallWare smallWare, bool isSelected) {
    List<SmallWare> smallWares = List.from(state.smallWares);
    if (smallWares.contains(smallWare)) {
      smallWares.removeWhere((a) => a == smallWare);
    } else {
      smallWares.add(smallWare);
    }

    state = state.copyWith(smallWares: smallWares);
  }

  void setupCreatedRecipes() {
    ref.read(createdRecipesProvider.notifier).setupRecipesStream();
  }
}
