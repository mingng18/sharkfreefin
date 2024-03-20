import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/gig_controller.dart';

class GigView extends GetView<GigController> {
  const GigView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GigView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GigView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
