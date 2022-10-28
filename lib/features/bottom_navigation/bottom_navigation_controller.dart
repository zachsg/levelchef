import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'bottom_navigation_model.dart';

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationController, BottomNavigationModel>(
        (_) => BottomNavigationController());

class BottomNavigationController extends StateNotifier<BottomNavigationModel> {
  BottomNavigationController()
      : super(const BottomNavigationModel(tabIndex: 1));

  void setTabIndex(int index) {
    state = state.copyWith(tabIndex: index);
  }
}
