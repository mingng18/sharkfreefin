import 'package:flutter/material.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    super.key,
    required this.title,
    this.icon,
    required this.subtitle,
    required this.body1,
    this.body2,
    this.progress,
    required this.onPressed,
  });

  final String title;
  final IconData? icon;
  final String subtitle;
  final String body1;
  final String? body2;
  final double? progress;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Widget debt(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: colors.surface),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: onPressed,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: context.titleLarge,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: colors.background,
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            icon,
                            color: colors.onBackground,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: context.titleLarge,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          body1,
                          style: context.labelSmall,
                        ),
                        Text(
                          body2 ?? "",
                          style: context.labelSmall,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: progress,
                      backgroundColor: colors.tertiaryContainer,
                      color: colors.tertiary,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16)
      ],
    );
  }

  Widget debtPayment(BuildContext context, bool paid) {
    var colors = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: colors.surface),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: context.titleLarge,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          height: 44,
                          width: 44,
                          child: IconButton.filled(
                            iconSize: 44,
                            style: IconButton.styleFrom(
                              backgroundColor: colors.onPrimaryContainer,
                            ),
                            icon: Icon(
                              !paid ? Icons.done : Icons.close,
                              color: colors.primaryContainer,
                              size: 16,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: context.titleMedium,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          body1,
                          style: context.labelSmall,
                        ),
                        !paid
                            ? CustomButton(
                                buttonText: "Pay Extra",
                                function: () {},
                              ).small(context)
                            : const SizedBox()
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}
