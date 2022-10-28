import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levelchef/strings.dart';

import '../settings_controller.dart';

class BioTextFieldWidget extends ConsumerStatefulWidget {
  const BioTextFieldWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BioTextFieldWidgetState();
}

class _BioTextFieldWidgetState extends ConsumerState<BioTextFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        TextEditingController(text: ref.read(settingsProvider.notifier).bio);
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
        textCapitalization: TextCapitalization.sentences,
        minLines: 1,
        maxLines: 6,
        decoration: const InputDecoration(
          labelText: bioLabel,
        ),
        onChanged: (value) => ref.read(settingsProvider.notifier).setBio(value),
      ),
    );
  }
}
