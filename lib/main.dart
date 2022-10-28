import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'levelchef_app.dart';
import 'constants.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final prefs = await SharedPreferences.getInstance();
  final themePref = prefs.getInt(themeKey);

  ThemeMode themeMode;
  switch (themePref) {
    case 0:
      themeMode = ThemeMode.system;
      break;
    case 1:
      themeMode = ThemeMode.light;
      break;
    case 2:
      themeMode = ThemeMode.dark;
      break;
    default:
      themeMode = ThemeMode.system;
  }

  runApp(
    ProviderScope(
      child: LevelChefApp(themeMode: themeMode),
    ),
  );
}
