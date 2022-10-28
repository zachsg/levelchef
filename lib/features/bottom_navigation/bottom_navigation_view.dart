import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../bundles/bundles_view.dart';
import '../discover/discover_view.dart';
import '../profile/profile_controller.dart';
import '../profile/profile_view.dart';
import 'bottom_navigation_controller.dart';

class BottomNavigationView extends ConsumerStatefulWidget {
  const BottomNavigationView({super.key});

  static const routeName = '/bottom_nav';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomNavigationViewState();
}

class _BottomNavigationViewState extends ConsumerState<BottomNavigationView> {
  @override
  void initState() {
    super.initState();
    ref.read(profileProvider.notifier).load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ref.watch(bottomNavigationProvider).tabIndex == 0
                ? const DiscoverView()
                : ref.watch(bottomNavigationProvider).tabIndex == 1
                    ? const BundlesView()
                    : const ProfileView(),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) =>
            ref.read(bottomNavigationProvider.notifier).setTabIndex(value),
        selectedIndex: ref.watch(bottomNavigationProvider).tabIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search),
            label: discoverLabel,
          ),
          NavigationDestination(
            icon: Icon(Icons.list_alt_outlined),
            selectedIcon: Icon(Icons.list_alt),
            label: bundlesLabel,
          ),
          NavigationDestination(
            icon: Icon(Icons.face_outlined),
            selectedIcon: Icon(Icons.face),
            label: profileLabel,
          ),
        ],
      ),
    );
  }
}
