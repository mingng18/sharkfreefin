import 'package:get/get.dart';

import '../controllers/alert_message_controller.dart';

class AlertMessageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AlertMessageController>(
      () => AlertMessageController(),
    );
  }
}
