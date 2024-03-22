import 'package:get/get.dart';

import '../controllers/dmp_program_controller.dart';

class DmpProgramBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DmpProgramController>(
      () => DmpProgramController(),
    );
  }
}
