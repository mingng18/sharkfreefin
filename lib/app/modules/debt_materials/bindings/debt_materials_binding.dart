import 'package:get/get.dart';

import '../controllers/debt_materials_controller.dart';

class DebtMaterialsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DebtMaterialsController>(
      () => DebtMaterialsController(),
    );
  }
}
