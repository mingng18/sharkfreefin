import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/modules/community/controllers/community_controller.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';

class BehaviorQuesStartView extends GetView<CommunityController> {
  const BehaviorQuesStartView({Key? key}) : super(key: key);
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
              const SizedBox(height: 16),
              Align(
                  alignment: Alignment.centerLeft,
                  child: const CustomBackButton()),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "lib/app/data/asset/images/behavior_coin.png",
                    fit: BoxFit.cover,
                    height: 242,
                  ),
                  const SizedBox(height: 16),
                  Text("Understand your spending behaviour",
                      style: context.headlineLarge,
                      textAlign: TextAlign.center),
                  const SizedBox(height: 8),
                  Text(
                      "Take 5 minutes to complete this survey to know yourself better!",
                      style: context.bodyLarge,
                      textAlign: TextAlign.center),
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
                      onPressed: () =>
                          controller.startSpendingBehaviourQuestionnaire(),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colors.secondary)),
                      child: Text(
                        "Start",
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
