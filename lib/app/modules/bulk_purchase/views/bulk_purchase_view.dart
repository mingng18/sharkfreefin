import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

import '../controllers/bulk_purchase_controller.dart';

class BulkPurchaseView extends GetView<BulkPurchaseController> {
  const BulkPurchaseView({Key? key}) : super(key: key);
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
                const CustomBackButton(),
                const SizedBox(height: 32),
                Text(
                  "Bulk Purchase",
                  style: context.displayMedium,
                ),
                Text(
                  "Group purchase for a better deals",
                  style: context.bodyLarge,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                        child: SearchBar(
                            elevation: MaterialStateProperty.all<double?>(0.0),
                            backgroundColor: MaterialStateProperty.all<Color?>(
                                colors.surface),
                            hintText: "laundry detergent",
                            trailing: const [
                          Icon(Icons.search),
                          SizedBox(width: 16)
                        ])),
                    const SizedBox(width: 16),
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: IconButton.filledTonal(
                        style: IconButton.styleFrom(
                            backgroundColor: colors.surface),
                        iconSize: 56,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.filter_alt_rounded,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                MasonryGridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    children: [
                      itemCard(
                          context,
                          "",
                          "Softlan Floral Fresh Fabric Softener Refill 1.4L",
                          7.69,
                          6,
                          () => Get.toNamed(Routes.PURCHASE_GOOD_DETAIL)),
                      itemCard(
                          context,
                          "",
                          "Softlan Floral Fresh Fabric Softener Refill 1.4L",
                          7.69,
                          6,
                          () => Get.toNamed(Routes.PURCHASE_GOOD_DETAIL)),
                      itemCard(
                          context,
                          "",
                          "Softlan Floral Fresh Fabric Softener Refill 1.4L",
                          7.69,
                          6,
                          () => Get.toNamed(Routes.PURCHASE_GOOD_DETAIL)),
                      itemCard(
                          context,
                          "",
                          "Softlan Floral Fresh Fabric Softener Refill 1.4L",
                          7.69,
                          6,
                          () => Get.toNamed(Routes.PURCHASE_GOOD_DETAIL)),
                    ]),
                const SizedBox(height: 24),
              ],
            ),
          )),
    ));
  }

  Widget itemCard(BuildContext context, String imagePath, String title,
      double price, int remainingUnit, VoidCallback onPressed) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 16),
      child: Material(
        elevation: 2,
        color: colors.surface,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "lib/app/data/asset/images/coffee_bean.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    title,
                    style: context.labelSmall,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "RM${price.toStringAsFixed(2)}",
                            style: context.labelLargeProminent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "$remainingUnit unit left",
                            style: context.labelSmall,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    CustomButton(
                      buttonText: "",
                      onPressed: () {},
                      icon: Icons.add,
                    ).roundButton(context),
                    const SizedBox(width: 8),
                  ],
                ),
                const SizedBox(height: 8),
              ],
            )),
      ),
    );
  }
}
