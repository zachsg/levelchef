import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../auth_controller.dart';
import 'confirm_password_text_field_widget.dart';
import 'email_text_field_widget.dart';
import 'password_text_field_widget.dart';

class RegisterAccountWidget extends ConsumerWidget {
  const RegisterAccountWidget({super.key});

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const EmailTextFieldWidget(),
                        const PasswordTextFieldWidget(),
                        const ConfirmPasswordTextFieldWidget(),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () async =>
                              await ref.read(authProvider.notifier).register(),
                          child: const Text(createAccountLabel),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () => ref
                              .read(authProvider.notifier)
                              .setRegistering(false),
                          child: const Text(alreadyHaveAccountLabel),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
