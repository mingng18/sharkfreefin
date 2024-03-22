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
                paymentStrategyCard(context, PaymentStrategy.standard),
                const SizedBox(height: 16),
                paymentStrategyCard(context, PaymentStrategy.avalanche),
                const SizedBox(height: 16),
                paymentStrategyCard(
                    context, PaymentStrategy.snowballLowestBalance),
                const SizedBox(height: 16),
                paymentStrategyCard(
                    context, PaymentStrategy.snowballHighestBalance),
                const SizedBox(height: 40),
              ],
            ),
          )),
    ));
  }

  Widget paymentStrategyCard(BuildContext context, PaymentStrategy strategy) {
    var colors = Theme.of(context).colorScheme;
    return Obx(() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color:
                strategy.value == controller.selectedPaymentStrategy.value.value
                    ? colors.onPrimaryContainer
                    : colors.surface),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          child: InkWell(
            onTap: () => controller.changePaymentStrategy(strategy),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      strategy.title,
                      style: context.titleLarge!.copyWith(
                          color: strategy.value ==
                                  controller.selectedPaymentStrategy.value.value
                              ? colors.primaryContainer
                              : colors.onSurface),
                    ),
                    const SizedBox(height: 8),
                    strategy.subtitle == ""
                        ? const SizedBox()
                        : Text(
                            strategy.subtitle,
                            style: context.bodyLarge!.copyWith(
                                color: strategy.value ==
                                        controller
                                            .selectedPaymentStrategy.value.value
                                    ? colors.primaryContainer
                                    : colors.onSurface),
                          ),
                    strategy.subtitle == ""
                        ? const SizedBox()
                        : const SizedBox(height: 8),
                    Text(
                      strategy.body,
                      style: context.labelMedium!.copyWith(
                          color: strategy.value ==
                                  controller.selectedPaymentStrategy.value.value
                              ? colors.primaryContainer
                              : colors.onSurface),
                    ),
                  ]),
            ),
          ),
        )));
  }
}
