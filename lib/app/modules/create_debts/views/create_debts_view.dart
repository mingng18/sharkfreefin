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
              const SizedBox(height: 24),
              CustomTextField(label: "Name", placeholder: "Credit card"),
              CustomTextField(label: "Name", placeholder: "Credit card"),
              CustomTextField(label: "Name", placeholder: "Credit card"),
            ],
          )),
    ));
  }
}
