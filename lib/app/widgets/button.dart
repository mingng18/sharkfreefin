import 'package:flutter/material.dart';
import 'package:sharkfreefin/app/extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.icon,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return Row(
      children: [
        const Spacer(),
        SizedBox(
          height: 44,
          child: TextButton.icon(
            onPressed: onPressed,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(colors.secondary),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                    const EdgeInsets.symmetric(horizontal: 24))),
            icon: Icon(
              icon,
              size: 24,
              color: colors.onSecondary,
            ),
            label: Text(
              buttonText,
              style: context.bodyLarge!.copyWith(color: colors.onSecondary),
            ),
          ),
        )
      ],
    );
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
        onPressed();
      },
    );
  }

  Widget roundButton(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return SizedBox(
      height: 44,
      width: 44,
      child: IconButton.filled(
        tooltip: buttonText,
        iconSize: 44,
        style: IconButton.styleFrom(
          backgroundColor: colors.onPrimaryContainer,
        ),
        icon: Icon(
          icon,
          color: colors.primaryContainer,
          size: 12,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
