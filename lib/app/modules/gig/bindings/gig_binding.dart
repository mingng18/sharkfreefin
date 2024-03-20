import 'package:get/get.dart';

import '../controllers/gig_controller.dart';

class GigBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GigController>(
      () => GigController(),
    );
  }
}
