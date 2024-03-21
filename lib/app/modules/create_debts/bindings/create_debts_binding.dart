import 'package:get/get.dart';

import '../controllers/create_debts_controller.dart';

class CreateDebtsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateDebtsController>(
      () => CreateDebtsController(),
    );
  }
}
