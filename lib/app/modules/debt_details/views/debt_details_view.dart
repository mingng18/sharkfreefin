import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';
import 'package:sharkfreefin/app/widgets/hori_card.dart';

import '../controllers/debt_details_controller.dart';

class DebtDetailsView extends GetView<DebtDetailsController> {
  const DebtDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomBackButton(),
              CustomButton(
                buttonText: "Edit",
                function: () {},
              ).small(context),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Debts",
                  style: context.displayMedium,
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
                  color: colors.surface,
                ),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.car_repair,
                  color: colors.onBackground,
                ),
              ),
            ],
          ),
          Text(
            "RM 1.000.000 Remaining",
            style: context.bodyLarge,
          ),
          const SizedBox(height: 4),
          Text(
            "RM 115,321.32 total interest (14.95%)",
            style: context.bodyMedium,
          ),
          const SizedBox(height: 4),
          Text(
            "10 years, 11 months left (1 March 2036)",
            style: context.labelLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          LinearProgressIndicator(
            value: 0.2,
            backgroundColor: colors.tertiaryContainer,
            color: colors.tertiary,
          ),
          const SizedBox(height: 32),
          TabBar(
            controller: controller.tabController,
            tabs: <Widget>[
              Tab(
                icon: Text(
                  "Upcoming",
                  style: context.titleSmall,
                ),
              ),
              Tab(
                icon: Text(
                  "Past",
                  style: context.titleSmall,
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: <Widget>[
                upcomingPayment(context, false),
                upcomingPayment(context, true),
              ],
            ),
          ),
        ]),
      ),
    ));
  }

  Widget upcomingPayment(BuildContext context, bool paid) {
    return Column(
      children: [
        const SizedBox(height: 16),
        HorizontalCard(
                title: '1 April 2024 (Monday)',
                subtitle: 'RM1,500',
                body1: 'Principal: RM1,239.00 | Interest: RM254.17',
                onPressed: () {})
            .debtPayment(context, paid),
        HorizontalCard(
                title: '1 April 2024 (Monday)',
                subtitle: 'RM1,500',
                body1: 'Principal: RM1,239.00 | Interest: RM254.17',
                onPressed: () {})
            .debtPayment(context, paid),
      ],
    );
  }
}
