import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';
import 'package:sharkfreefin/app/widgets/text_field.dart';

import '../controllers/help_controller.dart';

class HelpView extends GetView<HelpController> {
  const HelpView({Key? key}) : super(key: key);

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
                const CustomBackButton(),
                const SizedBox(height: 32),
                Text(
                  "Help",
                  style: context.displayMedium,
                ),
                Text(
                  "Help others by answering their questions",
                  style: context.bodyLarge,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                        child: SearchBar(
                            elevation: MaterialStateProperty.all<double?>(0.0),
                            backgroundColor: MaterialStateProperty.all<Color?>(
                                colors.surface),
                            hintText: "Search Help",
                            trailing: const [
                          Icon(Icons.search),
                          SizedBox(width: 16)
                        ])),
                    const SizedBox(width: 16),
                    SizedBox(
                      height: 56,
                      width: 56,
                      child: IconButton.filledTonal(
                        style: IconButton.styleFrom(
                            backgroundColor: colors.surface),
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
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: colors.secondaryContainer),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How do you save on your coffee?",
                          style: context.titleLarge,
                        ),
                        CustomTextField(
                            label: "", placeholder: "Your answer here"),
                        Text(
                          "Seems like you save more on coffee than others! Help others by answering this survey!",
                          style: context.bodyMedium,
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomButton(
                                  buttonText: "Submit", onPressed: () {})
                              .small(context),
                        )
                      ]),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: colors.secondaryContainer),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How do you save on your coffee?",
                          style: context.titleLarge,
                        ),
                        CustomTextField(
                            label: "", placeholder: "Your answer here"),
                        Text(
                          "Seems like you save more on coffee than others! Help others by answering this survey!",
                          style: context.bodyMedium,
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomButton(
                                  buttonText: "Submit", onPressed: () {})
                              .small(context),
                        )
                      ]),
                ),
                const SizedBox(height: 24),
              ],
            ),
          )),
    ));
  }
}
