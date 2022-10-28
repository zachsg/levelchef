import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../auth_controller.dart';

class EmailTextFieldWidget extends ConsumerStatefulWidget {
  const EmailTextFieldWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EmailTextFieldWidgetState();
}

class _EmailTextFieldWidgetState extends ConsumerState<EmailTextFieldWidget> {
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
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      decoration: const InputDecoration(labelText: emailLabel),
      onChanged: (value) => ref.read(authProvider.notifier).setEmail(value),
    );
  }
}
