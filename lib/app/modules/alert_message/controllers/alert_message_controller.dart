import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/alert_message_model.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';

class AlertMessageController extends GetxController {
  static AlertMessageController get to => Get.find();
  late AlertMessageModel alertMessage;

  void displayAlertPage(AlertMessageModel newAlertMessage) {
    alertMessage = newAlertMessage;
    Get.toNamed(Routes.ALERT_MESSAGE);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
