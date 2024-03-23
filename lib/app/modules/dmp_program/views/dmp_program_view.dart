import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

import '../controllers/dmp_program_controller.dart';

class DmpProgramView extends GetView<DmpProgramController> {
  const DmpProgramView({Key? key}) : super(key: key);
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
                const SizedBox(height: 32),
                Text(
                  "Debt Management Program",
                  style: context.displayMedium,
                ),
                Text(
                  "Stressed out by your monthly expenses? Having problems making your monthly repayments?",
                  style: context.bodyLarge,
                ),
                const SizedBox(height: 24),
                Image.asset(
                  "lib/app/data/asset/images/dmp2.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 24),
                Text(
                  "The DMP offered by AKPK is a structured debt repayment plan designed to help individuals repay their debts in a more manageable way. Under the DMP, AKPK will negotiate with your creditors to reduce your monthly payments and interest rates. You will then make a single monthly payment to AKPK, and they will distribute the funds to your creditors based on the agreed-upon plan.",
                  style: context.bodyLarge,
                ),
                const SizedBox(height: 40),
                CustomButton(
                  buttonText: "Learn More",
                  onPressed: () {},
                  icon: Icons.arrow_forward_ios_rounded,
                ),
                const SizedBox(height: 40),
              ],
            ),
          )),
    ));
  }
}
