import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'preferences_model.dart';

final preferencesProvider =
    StateNotifierProvider<PreferencesController, PreferencesModel>(
        (ref) => PreferencesController(ref: ref));

class PreferencesController extends StateNotifier<PreferencesModel> {
  PreferencesController({required this.ref}) : super(PreferencesModel());

  final Ref ref;
}
