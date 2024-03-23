import 'package:get/get.dart';

import '../controllers/debt_materials_details_controller.dart';

class DebtMaterialsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DebtMaterialsDetailsController>(
      () => DebtMaterialsDetailsController(),
    );
  }
}
