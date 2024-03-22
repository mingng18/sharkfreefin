import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

import '../controllers/payment_strategy_controller.dart';

class PaymentStrategyView extends GetView<PaymentStrategyController> {
  const PaymentStrategyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                const SizedBox(height: 24),
                Text(
                  "Payment Strategies",
                  style: context.displayMedium,
                ),
                Text(
                  "Do some questionnaire to determine which strategies works best for you",
                  style: context.bodyLarge,
                ),
                const SizedBox(height: 32),
                CustomButton(
                  buttonText: "Start Questionnaire",
                  function: () {},
                  icon: Icons.start_rounded,
                ),
                const SizedBox(height: 32),
                const Divider(),
                const SizedBox(height: 32),
                paymentStrategyCard(
                    context,
                    () => controller.changePaymentStrategy(PaymentStrategy.standard),
                    PaymentStrategy.standard.title,
                    PaymentStrategy.standard.subtitle,
                    PaymentStrategy.standard.body,
                    PaymentStrategy.standard.value),
                const SizedBox(height: 16),
                paymentStrategyCard(
                    context,
                    () {},
                    PaymentStrategy.avalanche.title,
                    PaymentStrategy.avalanche.subtitle,
                    PaymentStrategy.avalanche.body,
                    PaymentStrategy.avalanche.value),
                const SizedBox(height: 16),
                paymentStrategyCard(
                    context,
                    () {},
                    PaymentStrategy.snowballLowestBalance.title,
                    PaymentStrategy.snowballLowestBalance.subtitle,
                    PaymentStrategy.snowballLowestBalance.body,
                    PaymentStrategy.snowballLowestBalance.value),
                const SizedBox(height: 16),
                paymentStrategyCard(
                    context,
                    () {},
                    PaymentStrategy.snowballHighestBalance.title,
                    PaymentStrategy.snowballHighestBalance.subtitle,
                    PaymentStrategy.snowballHighestBalance.body,
                    PaymentStrategy.snowballHighestBalance.value),
                const SizedBox(height: 40),
              ],
            ),
          )),
    ));
  }

  Widget paymentStrategyCard(BuildContext context, VoidCallback onPressed,
      String title, String subtitle, String body, String value) {
    var colors = Theme.of(context).colorScheme;
    var textColor = value == controller.selectedPaymentStrategy.value.value
        ? colors.primaryContainer
        : colors.onSurface;
    return Obx(() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: value == controller.selectedPaymentStrategy.value.value
                ? colors.onPrimaryContainer
                : colors.surface),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          child: InkWell(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.titleLarge!.copyWith(color: textColor),
                    ),
                    const SizedBox(height: 8),
                    subtitle == ""
                        ? const SizedBox()
                        : Text(
                            subtitle,
                            style:
                                context.bodyLarge!.copyWith(color: textColor),
                          ),
                    subtitle == ""
                        ? const SizedBox()
                        : const SizedBox(height: 8),
                    Text(
                      body,
                      style: context.labelMedium!.copyWith(color: textColor),
                    ),
                  ]),
            ),
          ),
        )));
  }
}
