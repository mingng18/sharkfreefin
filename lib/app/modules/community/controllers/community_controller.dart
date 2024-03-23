import 'package:get/get.dart';
import 'package:sharkfreefin/app/state/questionnaire_state_controller.dart';

class CommunityController extends GetxController {
  void startSpendingBehaviourQuestionnaire() {
    QuestionnaireStateController.to.startQuestion();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    QuestionnaireStateController.to.initSpendingBehaviourQuestionSet();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
