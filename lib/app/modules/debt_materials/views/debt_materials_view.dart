import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/debt_materials_controller.dart';

class DebtMaterialsView extends GetView<DebtMaterialsController> {
  const DebtMaterialsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DebtMaterialsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DebtMaterialsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
