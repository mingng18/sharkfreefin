import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';

import '../controllers/alert_message_controller.dart';

class AlertMessageView extends GetView<AlertMessageController> {
  const AlertMessageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/app/data/asset/images/clover_coin.png",
                    fit: BoxFit.cover,
                    height: 242,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Successfully Filled",
                    style: context.headlineLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Thanks for filling in your expenditure!",
                    style: context.bodyLarge,
                  ),
                ],
              )),
              Row(
                children: [
                  // Expanded(
                  //   child: OutlinedButton(
                  //     onPressed: () {},
                  //     child: Text(
                  //       "Back to Home",
                  //       style: context.bodyLarge,
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(width: 16),
                  Expanded(
                    child: FilledButton(
                      onPressed: () => Get.until((route) =>
                          Get.currentRoute == Routes.PAYMENT_STRATEGY),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colors.secondary)),
                      child: Text(
                        "Back to Home",
                        style: context.bodyLarge!
                            .copyWith(color: colors.onSecondary),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40)
            ],
          )),
    ));
  }
}
