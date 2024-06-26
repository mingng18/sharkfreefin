import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

import '../controllers/create_help_controller.dart';

class CreateHelpView extends GetView<CreateHelpController> {
  const CreateHelpView({Key? key}) : super(key: key);
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
                value: 0.33,
                backgroundColor: colors.tertiaryContainer,
                color: colors.tertiary,
              ),
              const SizedBox(height: 32),
              Text(
                "Create Help",
                style: context.displayMedium,
              ),
              const SizedBox(height: 16),
              Text(
                "Type your requests from below and the community will try their best to answer it!",
                style: context.bodyLarge,
              ),
              const SizedBox(height: 24),
              Text(
                "Type of Help",
                style: context.bodyLarge,
              ),
              Obx(() => RadioListTile(
                    title: Text(
                      "Anonymously Direct Message",
                      style: context.bodyLarge,
                    ),
                    value: key,
                    groupValue: controller.helpType.value,
                    onChanged: (value) =>
                        controller.changeHelpType(HelpType.direct),
                  )),
              Obx(() => RadioListTile(
                    title: Text(
                      "Post to Community",
                      style: context.bodyLarge,
                    ),
                    value: key,
                    groupValue: controller.helpType.value,
                    onChanged: (value) =>
                        controller.changeHelpType(HelpType.community),
                  )),
              const Spacer(),
              CustomButton(
                  buttonText: "Next",
                  onPressed: () => Get.toNamed(Routes.CREATE_HELP2),
                  icon: Icons.skip_next),
              const SizedBox(height: 24),
            ],
          )),
    ));
  }
}
