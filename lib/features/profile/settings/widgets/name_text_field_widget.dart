import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../settings_controller.dart';

class NameTextFieldWidget extends ConsumerStatefulWidget {
  const NameTextFieldWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NameTextFieldWidgetState();
}

class _NameTextFieldWidgetState extends ConsumerState<NameTextFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TextEditingController(text: ref.read(settingsProvider.notifier).name);
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
        keyboardType: TextInputType.name,
        textCapitalization: TextCapitalization.words,
        decoration: const InputDecoration(labelText: nameLabel),
        onChanged: (value) =>
            ref.read(settingsProvider.notifier).setName(value),
      ),
    );
  }
}
