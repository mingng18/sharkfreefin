import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_help_controller.dart';

class CreateHelpView extends GetView<CreateHelpController> {
  const CreateHelpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CreateHelpView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CreateHelpView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
