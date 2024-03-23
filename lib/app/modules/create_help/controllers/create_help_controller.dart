import 'package:get/get.dart';

class CreateHelpController extends GetxController {
  Rx<HelpType> helpType = HelpType.direct.obs;

  void changeHelpType(HelpType type){
    helpType.value = type;
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

enum HelpType { direct, community }
enum QuestionType { poll, input }
