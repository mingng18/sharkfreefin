import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/chart_data_model.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/modules/home/controllers/home_controller.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/button.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              child: Text(
                "Pending",
                style: context.titleLarge,
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 16),
                  spendingTodoCard(context),
                  questionnaireTodoCard(
                      context, () => Get.toNamed(Routes.BEHAVIOR_START)),
                  bulkPurchaseTodoCard(context),
                  surveyCard(context),
                  debtTodoCard(context, "House", Icons.house, 2131, "1/2/2024",
                      () => Get.toNamed(Routes.DEBT_DETAILS))
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Expenses Breakdown",
                          style: context.titleLarge,
                        ),
                        CustomButton(
                          buttonText: "See More",
                          onPressed: () => HomeController.to.changeTabIndex(3),
                        ).small(context),
                      ],
                    ),
                    Text(
                      "You spent 22% less than people with same interest with you.",
                      style: context.bodyLarge,
                    ),
                    SfCircularChart(
                        palette: [
                          colors.primary,
                          colors.secondary,
                          colors.tertiary,
                          colors.primaryContainer,
                          colors.secondaryContainer,
                          colors.tertiaryContainer
                        ],
                        margin: EdgeInsets.zero,
                        tooltipBehavior: TooltipBehavior(
                            enable: true,
                            textStyle: context.labelMedium,
                            color: colors.primaryContainer),
                        legend: Legend(
                            isVisible: true,
                            position: LegendPosition.right,
                            textStyle: context.labelSmall),
                        series: <CircularSeries<ChartData, String>>[
                          DoughnutSeries<ChartData, String>(
                              dataSource: controller.debtData,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              name: 'Balance by Debt')
                        ]),
                    const SizedBox(height: 16),
                    Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.asset(
                              "lib/app/data/asset/images/laptop.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(
                            height: double.infinity,
                            padding:
                                const EdgeInsets.only(top: 12.0, left: 12.0),
                            alignment: Alignment.topLeft,
                            child: CustomButton(
                              buttonText: "Speak to Professionals",
                              onPressed: () {},
                            ).small(context),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text("Need help from Experts?", style: context.titleLarge),
                  ],
                )),
            const SizedBox(height: 40),
          ],
        ),
      )),
    );
  }

  Widget spendingTodoCard(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      width: 150,
      height: 136,
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("22%", style: context.headlineLarge),
                    Text("more spending than others on",
                        style: context.bodySmall),
                    Text("Entertainment",
                        style: context.labelMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              bottom: 8,
              right: 8,
              child: CustomButton(
                buttonText: "Open",
                icon: Icons.arrow_forward_ios_rounded,
                onPressed: () => HomeController.to.changeTabIndex(3),
              ).roundButton(context))
        ],
      ),
    );
  }

  Widget questionnaireTodoCard(BuildContext context, VoidCallback onPressed) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      width: 150,
      height: 136,
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(right: 16),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: onPressed,
          child: Stack(
            children: [
              Positioned(
                width: 150,
                height: 136,
                bottom: -60,
                child: Image.asset(
                  "lib/app/data/asset/images/open_book.png",
                  // scale: 0.1,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: colors.secondary,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(8),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Complete this", style: context.bodySmall),
                        Text("Questionnaire",
                            style: context.labelMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        Text("to know your spending behaviour!",
                            style: context.bodySmall),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bulkPurchaseTodoCard(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      width: 240,
      margin: const EdgeInsets.only(right: 16),
      child: Container(
          height: 136,
          decoration: BoxDecoration(
            color: colors.surfaceVariant,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
                decoration: BoxDecoration(
                  color: colors.tertiary,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bulk Purchase Order",
                        style: context.labelLarge!
                            .copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              "lib/app/data/asset/images/coffee_bean.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        SizedBox(
                          width: 166,
                          child: Text(
                            "Espresso Roast Blend Ground Coffee 12oz bag",
                            style: context.bodySmall,
                            overflow: TextOverflow.visible,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text("Bulk Purchase Order",
                        style: context.labelMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    LinearProgressIndicator(
                      value: 0.2,
                      backgroundColor: colors.tertiaryContainer,
                      color: colors.tertiary,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget surveyCard(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      width: 150,
      height: 136,
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          Positioned(
            width: 140,
            height: 126,
            bottom: -40,
            left: -40,
            child: Image.asset(
              "lib/app/data/asset/images/magnifying_glass.png",
              scale: 0.2,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
                decoration: BoxDecoration(
                  color: colors.secondary,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text("Help other by completing this survey!",
                      style: context.bodySmall))
            ],
          ),
          Positioned(
              bottom: 8,
              right: 8,
              child: CustomButton(
                buttonText: "Open",
                icon: Icons.arrow_forward_ios_rounded,
                onPressed: () {},
              ).roundButton(context))
        ],
      ),
    );
  }

  Widget debtTodoCard(BuildContext context, String title, IconData icon,
      double amount, String date, VoidCallback onPressed) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      width: 150,
      height: 136,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: colors.surfaceVariant, borderRadius: BorderRadius.circular(8)),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors.background
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
                          style: context.bodyLarge!
                              .copyWith(fontWeight: FontWeight.w900)),
                      const SizedBox(height: 8),
                      Text("Due on ${date}", style: context.labelMedium),
                      const SizedBox(height: 8),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
