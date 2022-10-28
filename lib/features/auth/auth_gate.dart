import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/auth.dart';
import '../bottom_navigation/bottom_navigation_view.dart';
import 'auth_view.dart';

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  static const routeName = '/auth_gate';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder<User?>(
      stream: Auth.authStateChanges(),
      builder: (context, AsyncSnapshot<User?> user) {
        return user.data == null
            ? const AuthView()
            : const BottomNavigationView();
      },
    );
  }
}
