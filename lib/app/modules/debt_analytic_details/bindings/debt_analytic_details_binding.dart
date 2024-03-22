import 'package:get/get.dart';

import '../controllers/debt_analytic_details_controller.dart';

class DebtAnalyticDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DebtAnalyticDetailsController>(
      () => DebtAnalyticDetailsController(),
    );
  }
}
