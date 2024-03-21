import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/text_field.dart';

import '../controllers/create_debts_controller.dart';

class CreateDebtsView extends GetView<CreateDebtsController> {
  const CreateDebtsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    List<DropdownMenuEntry<String>> frequencyList =
        ["Weekly", "Fortnightly", "Monthly", "Quarterly", "6 Months", "Yearly"]
            .map((String value) => DropdownMenuEntry<String>(
                  value: value,
                  label: value,
                ))
            .toList();

    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const CustomBackButton(),
              const SizedBox(height: 24),
              Text(
                "Add Debt",
                style: context.displayMedium,
              ),
              const SizedBox(height: 24),
              CustomTextField(label: "Name", placeholder: "Credit card"),
              CustomTextField(label: "Amount Due", placeholder: "RM1000"),
              CustomTextField(label: "Interest Rate", placeholder: "14.95%"),
              CustomTextField(label: "Repayment Amount", placeholder: "RM100"),
              DropdownMenu<String>(
                  width: Get.width - 16 * 2,
                  enableSearch: false,
                  controller: controller.frequencyController,
                  requestFocusOnTap: false,
                  label: const Text('Repayment Frequency'),
                  textStyle: context.titleLarge,
                  inputDecorationTheme: InputDecorationTheme(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: InputBorder.none,
                    labelStyle: context.titleMedium,
                    // contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                  ),
                  initialSelection: frequencyList[0].label,
                  onSelected: (String? label) {},
                  dropdownMenuEntries: frequencyList),
              TextField(
                controller: controller.dateController,
                readOnly: true,
                onTap: () => controller.selectDate(context),
                style: context.titleLarge,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    label: Text(
                      "Next Payment Date",
                      style: context.titleMedium,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: "18 March 2024",
                    hintStyle:
                        context.titleLarge!.copyWith(color: colors.outline)),
              ),
              const SizedBox(height: 32),
              const Divider(),
              const SizedBox(height: 32),
              Row(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 44,
                    child: TextButton.icon(
                      onPressed: () {
                        Get.back();
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colors.secondary),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry?>(
                                  const EdgeInsets.symmetric(horizontal: 24))),
                      icon: Icon(
                        Icons.add,
                        size: 24,
                        color: colors.onSecondary,
                      ),
                      label: Text(
                        "Add Debt",
                        style: context.bodyLarge!
                            .copyWith(color: colors.onSecondary),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    ));
  }
}

enum Frequency {
  smile('Smile', Icons.sentiment_satisfied_outlined),
  cloud(
    'Cloud',
    Icons.cloud_outlined,
  ),
  brush('Brush', Icons.brush_outlined),
  heart('Heart', Icons.favorite);

  const Frequency(this.label, this.icon);
  final String label;
  final IconData icon;
}
