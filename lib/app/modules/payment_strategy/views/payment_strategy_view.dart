import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payment_strategy_controller.dart';

class PaymentStrategyView extends GetView<PaymentStrategyController> {
  const PaymentStrategyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PaymentStrategyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PaymentStrategyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
