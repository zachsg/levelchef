import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:levelchef/strings.dart';

import 'constants.dart';
import 'features/auth/auth_gate.dart';
import 'features/bottom_navigation/bottom_navigation_view.dart';
import 'features/bundles/bundles_view.dart';
import 'features/discover/discover_view.dart';
import 'features/profile/created_bundles/created_bundles_view.dart';
import 'features/profile/created_recipes/created_recipe/created_recipe_view.dart';
import 'features/profile/created_recipes/created_recipes_view.dart';
import 'features/profile/preferences/preferences_view.dart';
import 'features/profile/profile_view.dart';
import 'features/profile/settings/settings_view.dart';

class LevelChefApp extends StatefulWidget {
  const LevelChefApp({super.key, required this.themeMode});

  final ThemeMode themeMode;

  @override
  State<LevelChefApp> createState() => _LevelChefAppState();
}

class _LevelChefAppState extends State<LevelChefApp> {
  @override
  void initState() {
    super.initState();

    // TODO: set theme in themeProvider from widget.themeMode
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      // debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      title: appNameLabel,
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: widget.themeMode,
    );
  }

  final router = GoRouter(
    initialLocation: AuthGate.routeName,
    routes: [
      GoRoute(
        name: AuthGate.routeName,
        path: AuthGate.routeName,
        builder: (context, state) => const AuthGate(),
      ),
      GoRoute(
        name: BottomNavigationView.routeName,
        path: BottomNavigationView.routeName,
        builder: (context, state) => const BottomNavigationView(),
        routes: [
          GoRoute(
            name: DiscoverView.routeName,
            path: DiscoverView.routeName,
            builder: (context, state) => const DiscoverView(),
          ),
          GoRoute(
            name: BundlesView.routeName,
            path: BundlesView.routeName,
            builder: (context, state) => const BundlesView(),
          ),
          GoRoute(
              name: ProfileView.routeName,
              path: ProfileView.routeName,
              builder: (context, state) => const ProfileView(),
              routes: [
                GoRoute(
                  name: PreferencesView.routeName,
                  path: PreferencesView.routeName,
                  builder: (context, state) => const PreferencesView(),
                ),
                GoRoute(
                  name: CreatedRecipesView.routeName,
                  path: CreatedRecipesView.routeName,
                  builder: (context, state) => const CreatedRecipesView(),
                  routes: [
                    GoRoute(
                      name: CreatedRecipeView.routeName,
                      path: CreatedRecipeView.routeName,
                      builder: (context, state) => const CreatedRecipeView(),
                    ),
                  ],
                ),
                GoRoute(
                  name: CreatedBundlesView.routeName,
                  path: CreatedBundlesView.routeName,
                  builder: (context, state) => const CreatedBundlesView(),
                ),
                GoRoute(
                  name: SettingsView.routeName,
                  path: SettingsView.routeName,
                  builder: (context, state) => const SettingsView(),
                ),
              ]),
        ],
      ),
    ],
  );
}
