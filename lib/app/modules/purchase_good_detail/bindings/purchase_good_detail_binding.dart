import 'package:get/get.dart';

import '../controllers/purchase_good_detail_controller.dart';

class PurchaseGoodDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PurchaseGoodDetailController>(
      () => PurchaseGoodDetailController(),
    );
  }
}
