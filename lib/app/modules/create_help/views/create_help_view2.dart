import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/alert_message_model.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/modules/alert_message/controllers/alert_message_controller.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';
import 'package:sharkfreefin/app/widgets/text_field.dart';

import '../controllers/create_help_controller.dart';

class CreateHelpView2 extends GetView<CreateHelpController> {
  const CreateHelpView2({Key? key}) : super(key: key);
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
              const SizedBox(height: 32),
              LinearProgressIndicator(
                value: 0.66,
                backgroundColor: colors.tertiaryContainer,
                color: colors.tertiary,
              ),
              const SizedBox(height: 32),
              Text(
                "Questions",
                style: context.displayMedium,
              ),
              const SizedBox(height: 16),
              Text(
                "Type your question here",
                style: context.bodyLarge,
              ),
              CustomTextField(
                  label: "", placeholder: "How to buy cheaper coffee?"),
              const Spacer(),
              CustomButton(
                  buttonText: "Next",
                  onPressed: () => AlertMessageController.to.displayAlertPage(
                      AlertMessageModel(
                          title: "Successfully Created!",
                          body:
                              "Your enquires will be answered by the community soon!",
                          buttonText: "Back to Community",
                          routeName: Routes.HOME)),
                  icon: Icons.skip_next),
              const SizedBox(height: 24),
            ],
          )),
    ));
  }
}
