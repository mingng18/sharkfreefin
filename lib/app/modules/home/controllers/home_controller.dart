import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
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
