import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateDebtsController extends GetxController {
  final TextEditingController frequencyController = TextEditingController();
  final TextEditingController reminderController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  Future<void> selectDate(BuildContext context) async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (_picked != null) {
      dateController.text = _picked.toString().split(" ")[0];
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
