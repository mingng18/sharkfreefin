import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/hori_card.dart';

import '../controllers/all_debts_controller.dart';

class AllDebtsView extends GetView<AllDebtsController> {
  const AllDebtsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => Get.toNamed(Routes.CREATE_DEBTS),
            backgroundColor: colors.onPrimaryContainer,
            shape: const CircleBorder(),
            child: Icon(
              Icons.add,
              color: colors.primaryContainer,
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomBackButton(),
                  TextButton.icon(
                    onPressed: () => Get.toNamed(Routes.DEBT_ANALYTIC_DETAILS),
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    ),
                    label: Text(
                      "Analytic Details",
                      style: context.labelSmall,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32),
              Text(
                "Debts",
                style: context.displayMedium,
              ),
              Text(
                "Manage all your debts in one place",
                style: context.bodyLarge,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                      child: SearchBar(
                          elevation: MaterialStateProperty.all<double?>(0.0),
                          backgroundColor:
                              MaterialStateProperty.all<Color?>(colors.surface),
                          hintText: "Search debts",
                          trailing: const [
                        Icon(Icons.search),
                        SizedBox(width: 16)
                      ])),
                  const SizedBox(width: 16),
                  SizedBox(
                    height: 56,
                    width: 56,
                    child: IconButton.filledTonal(
                      style:
                          IconButton.styleFrom(backgroundColor: colors.surface),
                      iconSize: 56,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt_rounded,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HorizontalCard(
                        title: "Car",
                        icon: Icons.car_repair,
                        subtitle: "RM 1.000.000 Remaining",
                        body1: "RM 1600 Due on 26/3/2024",
                        body2: "10 years, 11 months left",
                        progress: 0.2,
                        onPressed: () {
                          Get.toNamed(Routes.DEBT_DETAILS);
                        }).debt(context),
                    HorizontalCard(
                        title: "Car",
                        icon: Icons.car_repair,
                        subtitle: "RM 1.000.000 Remaining",
                        body1: "RM 1600 Due on 26/3/2024",
                        body2: "10 years, 11 months left",
                        progress: 0.2,
                        onPressed: () {
                          Get.toNamed(Routes.DEBT_DETAILS);
                        }).debt(context),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
