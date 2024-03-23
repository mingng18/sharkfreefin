import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';

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
                    controller.alertMessage.title,
                    style: context.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    controller.alertMessage.body ?? "",
                    style: context.bodyLarge,
                    textAlign: TextAlign.center,
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
                          Get.currentRoute ==
                          controller.alertMessage.routeName),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colors.secondary)),
                      child: Text(
                        controller.alertMessage.buttonText,
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
