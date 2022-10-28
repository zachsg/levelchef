import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../auth_controller.dart';

class ConfirmPasswordTextFieldWidget extends ConsumerStatefulWidget {
  const ConfirmPasswordTextFieldWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConfirmPasswordTextFieldWidgetState();
}

class _ConfirmPasswordTextFieldWidgetState
    extends ConsumerState<ConfirmPasswordTextFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      textCapitalization: TextCapitalization.none,
      decoration: const InputDecoration(labelText: confirmPasswordLabel),
      onChanged: (value) =>
          ref.read(authProvider.notifier).setConfirmPassword(value),
    );
  }
}
