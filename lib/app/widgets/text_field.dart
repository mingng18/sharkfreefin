import 'package:flutter/material.dart';
import 'package:sharkfreefin/app/extensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, required this.placeholder, this.controller});

  final String label;
  final String placeholder;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;

    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(
            label,
            style: context.titleMedium,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: context.titleLarge!.copyWith(color: colors.outline)),
    );
  }
}
