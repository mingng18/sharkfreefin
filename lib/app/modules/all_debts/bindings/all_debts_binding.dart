import 'package:get/get.dart';

import '../controllers/all_debts_controller.dart';

class AllDebtsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllDebtsController>(
      () => AllDebtsController(),
    );
  }
}
