import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  const CommunityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                topActionBar(context),
                const SizedBox(height: 8),
                defaultPost(context),
                bulkPurchasePost(context),
                questionnairePost(context),
                const SizedBox(height: 40),
              ],
            ),
          )),
    ));
  }

  Widget topActionBar(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Row(
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            height: 44,
            child: FilledButton.icon(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(colors.onPrimaryContainer),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              onPressed: () => Get.toNamed(Routes.BULK_PURCHASE),
              icon: const Icon(Icons.shopping_bag),
              label: Text(
                "Purchase",
                style: context.bodyLarge!.copyWith(color: colors.onPrimary),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          flex: 5,
          child: FilledButton.icon(
              onPressed: () => Get.toNamed(Routes.HELP),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(colors.onPrimaryContainer),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              icon: Row(
                children: [
                  const Icon(Icons.handshake),
                  const SizedBox(width: 8),
                  Text(
                    "Help",
                    style: context.bodyLarge!.copyWith(color: colors.onPrimary),
                  ),
                ],
              ),
              label: FilterChip.elevated(
                backgroundColor: colors.primaryContainer,
                label: Text(
                  "Create Help",
                  style: context.bodyMedium!.copyWith(
                    color: colors.onPrimaryContainer,
                  ),
                ),
                onSelected: (isSelected) {},
              )),
        ),
      ],
    );
  }

  Widget defaultPost(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        profileHeader(context),
        const SizedBox(height: 8),
        Text(
          "Help on how to save on rent in KL area",
          style: context.bodyLarge,
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Text(
              "Tim:",
              style: context.labelLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 6),
            Text(
              "Try to search around Bangsar area",
              style: context.bodySmall,
            ),
          ],
        ),
        const SizedBox(height: 8),
        postActionBar(context),
        const Divider(),
      ],
    );
  }

  Widget bulkPurchasePost(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        profileHeader(context),
        const SizedBox(height: 8),
        Text(
          "Anyone wants to buy coffee bean?",
          style: context.bodyLarge,
        ),
        const SizedBox(height: 6),
        Container(
          decoration: BoxDecoration(
            color: colors.surfaceVariant,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Image.asset(
                    "lib/app/data/asset/images/coffee_bean.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Espresso Roast Blend Ground Coffee 12oz bag",
                        style: context.labelSmall,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "RM7.69",
                                  style: context.labelLarge,
                                ),
                                Text(
                                  "6 units left",
                                  style: context.labelSmall,
                                ),
                              ],
                            ),
                          ),
                          CustomButton(
                            buttonText: "",
                            onPressed: () {},
                            icon: Icons.add,
                          ).roundButton(context),
                          const SizedBox(width: 8)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        postActionBar(context),
        const Divider(),
      ],
    );
  }

  Widget questionnairePost(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        profileHeader(context),
        const SizedBox(height: 8),
        Text(
          "Poll: Where do you get your coffee every month?",
          style: context.bodyLarge,
        ),
        const SizedBox(height: 4),
        pollSelectionBox(context, "a.", "Instant coffee", (bruh) {}),
        pollSelectionBox(context, "b.", "Franchises Café (Zus)", (bruh) {}),
        pollSelectionBox(context, "c.", "Self brew", (bruh) {}),
        pollSelectionBox(context, "d.", "Independent Café", (bruh) {}),
        postActionBar(context),
        const Divider(),
      ],
    );
  }

  Widget pollSelectionBox(
      BuildContext context, String a, String answer, Function(bool) onPressed) {
    return Row(children: [
      Text(
        a,
        style: context.bodyLarge,
      ),
      const SizedBox(width: 8),
      FilterChip(
          label: Text(
            answer,
            style: context.labelLarge,
          ),
          onSelected: onPressed)
    ]);
  }

  Widget profileHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "lib/app/data/asset/images/no_profile_pic.png",
                  scale: 0.5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              "Aizam",
              style: context.labelLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Text(
          "20/3/2024",
          style: context.labelLarge,
        ),
      ],
    );
  }

  Widget postActionBar(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_upward_outlined,
            color: colors.onBackground,
          ),
          label: Text(
            "Upvote 34",
            style: context.bodySmall,
          ),
        ),
        const SizedBox(width: 24),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.mode_comment_rounded,
            color: colors.onBackground,
          ),
          label: Text(
            "Comment 2",
            style: context.bodySmall,
          ),
        ),
      ],
    );
  }
}
