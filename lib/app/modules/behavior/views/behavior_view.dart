import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/behavior_controller.dart';

class BehaviorView extends GetView<BehaviorController> {
  const BehaviorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BehaviorView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BehaviorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
