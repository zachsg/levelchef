import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_controller.dart';
import 'widgets/register_account_widget.dart';
import 'widgets/sign_in_widget.dart';

class AuthView extends ConsumerWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authProvider).isRegistering
        ? const RegisterAccountWidget()
        : const SignInWidget();
  }
}
