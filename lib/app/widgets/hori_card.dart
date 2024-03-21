import 'package:flutter/material.dart';
import 'package:sharkfreefin/app/extensions.dart';

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

    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: colors.surface),
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
    );
  }
}
