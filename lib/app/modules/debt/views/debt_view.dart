import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

import '../controllers/debt_controller.dart';

class DebtView extends GetView<DebtController> {
  const DebtView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                Text(
                  "Debt-free Countdown",
                  style: context.displayMedium,
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: colors.primaryContainer,
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
              ]),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Debts",
                    style: context.titleLarge,
                  ),
                  CustomButton(
                    buttonText: "See More",
                    function: () {
                      Get.toNamed(Routes.ALL_DEBTS);
                    },
                  ).small(context),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // ListView.builder(
            //   shrinkWrap: true,
            //   scrollDirection: Axis.horizontal,
            //   itemCount: 3,
            //   itemBuilder: (context, index) {
            //     return debtCard(context, "House", Icons.house, 2131, "1/2/2024");
            //   },
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 16),
                  debtCard(context, "House", Icons.house, 2131, "1/2/2024"),
                  debtCard(context, "House", Icons.house, 2131, "1/2/2024"),
                  debtCard(context, "House", Icons.house, 2131, "1/2/2024")
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "lib/app/data/asset/images/money.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      height: double.infinity,
                      padding: const EdgeInsets.only(top: 12.0, left: 12.0),
                      alignment: Alignment.topLeft,
                      child: CustomButton(
                        buttonText: "Know more about debts",
                        function: () {},
                      ).small(context),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          function: () {},
                        ).small(context),
                      ],
                    )
                  ]),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            "lib/app/data/asset/images/dmp.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Container(
                          height: double.infinity,
                          padding: const EdgeInsets.only(top: 12.0, left: 12.0),
                          alignment: Alignment.topLeft,
                          child: CustomButton(
                            buttonText: "Debt Management Program",
                            function: () {},
                          ).small(context),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Affiliate with",
                        style: context.labelSmall,
                      ),
                      const SizedBox(width: 8),
                      Image.asset(
                        "lib/app/data/asset/images/akpk_logo.png",
                        fit: BoxFit.cover,
                        height: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }

  Widget debtCard(BuildContext context, String title, IconData icon,
    double amount, String date) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: colors.surfaceVariant, borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              child: Text(
                title,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 44,
              height: 44,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: colors.background
                      // borderRadius: BorderRadius.circular(40)
                      ),
              padding: const EdgeInsets.all(8),
              child: Icon(
                icon,
                color: colors.onBackground,
              ),
            )
          ]),
          const SizedBox(height: 8),
          Text("RM ${amount.toStringAsFixed(2)}",
              style: context.bodyLarge!.copyWith(fontWeight: FontWeight.w900)),
          const SizedBox(height: 8),
          Text("Due on ${date}", style: context.labelMedium),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
