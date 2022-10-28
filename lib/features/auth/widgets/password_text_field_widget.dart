import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../auth_controller.dart';

class PasswordTextFieldWidget extends ConsumerStatefulWidget {
  const PasswordTextFieldWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PasswordTextFieldWidgetState();
}

class _PasswordTextFieldWidgetState
    extends ConsumerState<PasswordTextFieldWidget> {
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
      decoration: const InputDecoration(labelText: passwordLabel),
      onChanged: (value) => ref.read(authProvider.notifier).setPassword(value),
    );
  }
}
