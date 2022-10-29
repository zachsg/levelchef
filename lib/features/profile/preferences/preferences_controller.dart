import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/allergy.dart';
import '../../../models/appliance.dart';
import '../../../models/path.dart';
import '../../../models/small_ware.dart';
import '../profile_controller.dart';
import 'preferences_model.dart';

final preferencesIsDirtyProvider = StateProvider<bool>((_) => false);

final preferencesProvider =
    StateNotifierProvider<PreferencesController, PreferencesModel>(
        (ref) => PreferencesController(ref: ref));

class PreferencesController extends StateNotifier<PreferencesModel> {
  PreferencesController({required this.ref}) : super(const PreferencesModel());

  final Ref ref;

  Path get path => ref.watch(profileProvider).path;

  void setPath(Path path) {
    ref.read(preferencesIsDirtyProvider.notifier).state = true;
    ref.read(profileProvider.notifier).setPath(path);
  }

  List<Allergy> get allergies => ref.watch(profileProvider).allergies;

  void setAllergy(Allergy allergy, bool isSelected) {
    ref.read(preferencesIsDirtyProvider.notifier).state = true;
    ref.read(profileProvider.notifier).setAllergy(allergy, isSelected);
  }

  List<Appliance> get appliances => ref.watch(profileProvider).appliances;

  void setAppliance(Appliance appliance, bool isSelected) {
    ref.read(preferencesIsDirtyProvider.notifier).state = true;
    ref.read(profileProvider.notifier).setAppliance(appliance, isSelected);
  }

  List<SmallWare> get smallWares => ref.watch(profileProvider).smallWares;

  void setSmallWare(SmallWare smallWare, bool isSelected) {
    ref.read(preferencesIsDirtyProvider.notifier).state = true;
    ref.read(profileProvider.notifier).setSmallWare(smallWare, isSelected);
  }

  Future<void> saveProfile() async {
    state = state.copyWith(isLoading: true);

    await ref.read(profileProvider.notifier).save();

    ref.read(preferencesIsDirtyProvider.notifier).state = false;

    state = state.copyWith(isLoading: false);
  }
}
