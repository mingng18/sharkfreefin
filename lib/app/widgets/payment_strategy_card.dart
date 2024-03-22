import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

class PaymentStrategyCard extends StatelessWidget {
  const PaymentStrategyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Payment Strategy Chosen",
        style: context.titleMedium,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Avalanche",
            style: context.titleLarge,
          ),
          CustomButton(
            buttonText: "See More",
            function: () => Get.toNamed(Routes.PAYMENT_STRATEGY),
          ).small(context),
        ],
      )
    ]);
  }
}
