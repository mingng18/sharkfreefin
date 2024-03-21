import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/debt_details_controller.dart';

class DebtDetailsView extends GetView<DebtDetailsController> {
  const DebtDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DebtDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DebtDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
