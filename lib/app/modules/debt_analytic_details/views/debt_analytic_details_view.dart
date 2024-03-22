import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';
import 'package:sharkfreefin/app/widgets/payment_strategy_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controllers/debt_analytic_details_controller.dart';

class DebtAnalyticDetailsView extends GetView<DebtAnalyticDetailsController> {
  const DebtAnalyticDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomBackButton(),
                  TextButton.icon(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 16,
                    ),
                    label: Text(
                      "All Debts",
                      style: context.labelSmall,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32),
              Text(
                "Analytic Details",
                style: context.displayMedium,
              ),
              Text(
                "Overview of your debts",
                style: context.bodyLarge,
              ),
              const SizedBox(height: 40),
              const PaymentStrategyCard(),
              const SizedBox(height: 40),
              Text(
                "Balance by debt",
                style: context.titleLarge,
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
              const SizedBox(height: 24),
              Text(
                "Payoff Timeline (RM)",
                style: context.titleLarge,
              ),
              const SizedBox(height: 24),
              SfCartesianChart(
                  palette: [colors.primary, colors.secondary, colors.tertiary],
                  margin: EdgeInsets.zero,
                  primaryXAxis: const CategoryAxis(
                      axisLine: AxisLine(width: 0.0, color: Colors.transparent),
                      labelPlacement: LabelPlacement.onTicks,
                      labelAlignment: LabelAlignment.end),
                  primaryYAxis: const NumericAxis(
                      minimum: 0,
                      maximum: 10000,
                      interval: 3000,
                      labelPosition: ChartDataLabelPosition.inside,
                      labelAlignment: LabelAlignment.end,
                      opposedPosition: true,
                      tickPosition: TickPosition.inside),
                  // tooltipBehavior: TooltipBehavior(
                  //     enable: true,
                  //     textStyle: context.labelMedium,
                  //     color: colors.primaryContainer),
                  series: <CartesianSeries<ChartData, String>>[
                    AreaSeries<ChartData, String>(
                        dataSource: controller.payoffTimelineData,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        name: 'Gold',
                        color: colors.onPrimaryContainer)
                  ]),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    ));
  }
}
