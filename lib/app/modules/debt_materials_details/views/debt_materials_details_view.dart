import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';

import '../controllers/debt_materials_details_controller.dart';

class DebtMaterialsDetailsView extends GetView<DebtMaterialsDetailsController> {
  const DebtMaterialsDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const CustomBackButton(),
              const SizedBox(height: 32),
              Text(
                "Debt Avalanche vs. Debt Snowball",
                style: context.displayMedium,
              ),
              Text(
                "The avalanche and snowball methods are two debt payoff strategies with the same goal—no debt—but different steps to use along the way. The avalanche method prioritizes eliminating high-interest debt while the snowball method prioritizes paying off the smallest debts first. Deciding which is your optimal method depends on your goals and what motivates you most.\n\nHere's how the debt avalanche and debt snowball strategies compare, plus how to pick the right method for you.",
                style: context.bodyLarge,
              ),
              const SizedBox(height: 24),
              Image.asset(
                "lib/app/data/asset/images/dmp.png",
                fit: BoxFit.cover,
              ),
            ],
          )),
    ));
  }
}
