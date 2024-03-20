import 'package:flutter/material.dart';
import 'package:sharkfreefin/app/extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.function,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }

  Widget small(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return FilterChip.elevated(
      backgroundColor: colors.onPrimaryContainer,
      label: Text(
        buttonText,
        style: context.labelSmall!.copyWith(
          color: colors.primaryContainer,
        ),
      ),
      onSelected: (isSelected) {
        function();
      },
    );
  }
}
