import 'package:get/get.dart';

import '../controllers/bulk_purchase_controller.dart';

class BulkPurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BulkPurchaseController>(
      () => BulkPurchaseController(),
    );
  }
}
