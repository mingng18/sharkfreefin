import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return SizedBox(
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
                size: 16,
              ),
              onPressed: () => Get.back(),
            ),
          );
  }
}