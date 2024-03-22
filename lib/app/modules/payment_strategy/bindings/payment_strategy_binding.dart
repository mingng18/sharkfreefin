import 'package:get/get.dart';

import '../controllers/payment_strategy_controller.dart';

class PaymentStrategyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentStrategyController>(
      () => PaymentStrategyController(),
    );
  }
}
