import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';

import '../controllers/debt_materials_controller.dart';

class DebtMaterialsView extends GetView<DebtMaterialsController> {
  const DebtMaterialsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      const CustomBackButton(),
                      const SizedBox(height: 32),
                      Text(
                        "Materials",
                        style: context.displayMedium,
                      ),
                      Text(
                        "Know more about debts",
                        style: context.bodyLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                MasonryGridView(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    children: [
                      debtMaterialCard(
                          context,
                          "",
                          "Debt Avalanche vs. Debt Snowball",
                          () => Get.toNamed(Routes.DEBT_MATERIALS_DETAILS)),
                      debtMaterialCard(
                          context,
                          "",
                          "Debt Avalanche vs. Debt Snowball",
                          () => Get.toNamed(Routes.DEBT_MATERIALS_DETAILS)),
                      debtMaterialCard(
                          context,
                          "",
                          "Debt Avalanche vs. Debt Snowball",
                          () => Get.toNamed(Routes.DEBT_MATERIALS_DETAILS)),
                      debtMaterialCard(
                          context,
                          "",
                          "Debt Avalanche vs. Debt Snowball",
                          () => Get.toNamed(Routes.DEBT_MATERIALS_DETAILS)),
                    ])
              ],
            ),
          )),
    ));
  }

  Widget debtMaterialCard(BuildContext context, String imagePath, String title,
      VoidCallback onPressed) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colors.surface,
        image: const DecorationImage(
          image: AssetImage("lib/app/data/asset/images/money.png"),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 16),
      child: Material(
        elevation: 2,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    const SizedBox(height: 144),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colors.surface,
                      ),
                      child: Text(
                        title,
                        style: context.labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ))),
      ),
    );
  }
}
