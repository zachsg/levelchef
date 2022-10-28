import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../settings_controller.dart';

class HandleTextFieldWidget extends ConsumerStatefulWidget {
  const HandleTextFieldWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HandleTextFieldWidgetState();
}

class _HandleTextFieldWidgetState extends ConsumerState<HandleTextFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TextEditingController(text: ref.read(settingsProvider.notifier).handle);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.text,
        textCapitalization: TextCapitalization.none,
        decoration: const InputDecoration(
          labelText: handleLabel,
          prefix: Text('@'),
        ),
        onChanged: (value) =>
            ref.read(settingsProvider.notifier).setHandle(value),
      ),
    );
  }
}
