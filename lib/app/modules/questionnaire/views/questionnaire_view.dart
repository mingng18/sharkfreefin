import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/state/payment_strategy_question_state.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

import '../controllers/questionnaire_controller.dart';

class QuestionnaireView extends GetView<QuestionnaireController> {
  const QuestionnaireView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GetBuilder<QuestionnaireController>(
              id: 'question',
              builder: (builderContext) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 44,
                      width: 44,
                      child: IconButton.filled(
                        iconSize: 44,
                        style: IconButton.styleFrom(
                          backgroundColor: colors.onPrimaryContainer,
                        ),
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: colors.primaryContainer,
                          size: 12,
                        ),
                        onPressed: () => controller.onBackPressed(),
                      ),
                    ),
                    const SizedBox(height: 32),
                    LinearProgressIndicator(
                      value: PaymentStrategyQuestionController.to
                          .calculateProgress(),
                      backgroundColor: colors.tertiaryContainer,
                      color: colors.tertiary,
                    ),
                    const SizedBox(height: 32),
                    Text(
                      "Question ${controller.question.number}",
                      style: context.displayMedium,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      controller.question.title,
                      style: context.bodyLarge,
                    ),
                    const SizedBox(height: 24),
                    ListView.builder(
                      itemCount: controller.question.answers!.length,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        final answer = controller.question.answers![i];
                        final key = answer
                            .keys.first; // Extracting the key from the map
                        final answerText = answer
                            .values.first; // Extracting the value from the map
                        return Obx(() => RadioListTile(
                              title: Text(
                                answerText,
                                style: context.bodyLarge,
                              ),
                              value: key,
                              groupValue: controller.chosenAnswer.value,
                              onChanged: (value) =>
                                  controller.changeAnswer(value),
                            ));
                      },
                    ),
                    const Spacer(),
                    CustomButton(
                        buttonText: "Next",
                        onPressed: () => controller.onNextPressed(),
                        icon: Icons.skip_next),
                    const SizedBox(height: 24),
                  ],
                );
              })),
    ));
  }
}
