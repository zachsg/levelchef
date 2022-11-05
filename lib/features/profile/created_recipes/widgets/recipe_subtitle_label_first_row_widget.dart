import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeSubtitleLabelFirstRowWidget extends ConsumerWidget {
  const RecipeSubtitleLabelFirstRowWidget({
    super.key,
    required this.label1,
    required this.value1,
    required this.label2,
    required this.value2,
  });

  final String label1;
  final String value1;
  final String label2;
  final String value2;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '$label1: ',
          style: Theme.of(context).textTheme.caption,
        ),
        Text(
          value1,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(width: 16),
        Text(
          '$label2: ',
          style: Theme.of(context).textTheme.caption,
        ),
        Text(
          value2,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
