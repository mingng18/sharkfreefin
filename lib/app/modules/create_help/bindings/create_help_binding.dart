import 'package:get/get.dart';

import '../controllers/create_help_controller.dart';

class CreateHelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateHelpController>(
      () => CreateHelpController(),
    );
  }
}
