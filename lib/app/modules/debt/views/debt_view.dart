import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';

import '../controllers/debt_controller.dart';

class DebtView extends GetView<DebtController> {
  const DebtView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme;
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            "Debt-free Countdown",
            style: context.displayMedium,
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: color.primaryContainer,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(children: [
                  Text(
                    "RM1,100,000 remaining",
                    style: context.bodyLarge,
                  ),
                  const SizedBox(width: 12),
                  const Icon(Icons.timer)
                ]),
                const SizedBox(height: 0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      "8",
                      style: context.displayLarge!.copyWith(fontSize: 80),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "years",
                      style: context.titleLarge,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "8",
                      style: context.displayLarge!.copyWith(fontSize: 80),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "months",
                      style: context.titleLarge,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Text(
                "Debts",
                style: context.titleLarge,
              ),
              FilledButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color?>(
                          color.onPrimaryContainer),
                      elevation: MaterialStateProperty.all<double?>(4.0),
                      fixedSize:
                          MaterialStateProperty.all<Size?>(const Size(100, 24))),
                  onPressed: () {},
                  child: Text(
                    "See More",
                    style: context.labelSmall!.copyWith(
                      color: color.primaryContainer,
                    ),
                  ))
            ],
          )
        ],
      ),
    )));
  }
}
