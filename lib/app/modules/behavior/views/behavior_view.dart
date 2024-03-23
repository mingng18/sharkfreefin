import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/chart_data_model.dart';
import 'package:sharkfreefin/app/data/model/suggestion_model.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/utils/json_util.dart';
import 'package:sharkfreefin/app/widgets/button.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controllers/behavior_controller.dart';

class BehaviorView extends GetView<BehaviorController> {
  const BehaviorView({Key? key}) : super(key: key);
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Spending\nBehaviour",
                    style: context.displayMedium,
                  ),
                  CustomButton(
                    buttonText: "Update Expenses",
                    onPressed: () {
                      Get.toNamed(Routes.ALL_DEBTS);
                    },
                  ).small(context),
                ],
              ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "You spent 22% more than people with same interest with you.",
                style: context.bodyLarge,
              ),
            ),
            const SizedBox(height: 24),
            FutureBuilder<Map<String, dynamic>>(
              future: JsonUtil.loadJsonFromAssets(
                  "lib/app/data/sample/suggestions.json"),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator(); // Show a loading indicator while waiting
                } else if (snapshot.hasError) {
                  return Text('Error loading suggestions: ${snapshot.error}');
                } else {
                  final suggestionData = snapshot.data!;
                  controller.suggestions.clear(); // Clear existing suggestions
                  suggestionData.forEach((key, value) {
                    SuggestionData suggestion = SuggestionData.fromMap(value);
                    controller.suggestions.add(suggestion);
                  });
                  return SizedBox(
                    height: 240,
                    child: TabBarView(
                      controller: controller.tabController,
                      children: <Widget>[
                        suggestionCard(context, controller.suggestions[0]),
                        suggestionCard(context, controller.suggestions[1]),
                        suggestionCard(context, controller.suggestions[2]),
                      ],
                    ),
                  );
                }
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }

  Widget suggestionCard(BuildContext context, SuggestionData suggestion) {
    var colors = Theme.of(context).colorScheme;

    return Container(
      height: 240,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colors.secondaryContainer),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Suggestion", style: context.labelLargeProminent),
        const SizedBox(height: 4),
        Text(suggestion.subtitle, style: context.bodyMedium),
        const SizedBox(height: 8),
        Text(suggestion.title,
            style: context.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
        Text(suggestion.body, style: context.bodyMedium),
        const SizedBox(height: 16),
        CustomButton(
                buttonText: suggestion.buttonText,
                onPressed: suggestion.onPressed)
            .small(context),
      ]),
    );
  }
}
