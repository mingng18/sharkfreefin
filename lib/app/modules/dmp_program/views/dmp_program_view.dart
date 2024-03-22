import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dmp_program_controller.dart';

class DmpProgramView extends GetView<DmpProgramController> {
  const DmpProgramView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DmpProgramView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DmpProgramView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
