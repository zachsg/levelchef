import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../auth_controller.dart';
import 'email_text_field_widget.dart';
import 'password_text_field_widget.dart';

class SignInWidget extends ConsumerWidget {
  const SignInWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ref.watch(authProvider).isLoading
                ? const CircularProgressIndicator()
                : Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        const EmailTextFieldWidget(),
                        const PasswordTextFieldWidget(),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () async =>
                              await ref.read(authProvider.notifier).signIn(),
                          child: const Text(signInLabel),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () => ref
                              .read(authProvider.notifier)
                              .setRegistering(true),
                          child: const Text(needAccountLabel),
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
