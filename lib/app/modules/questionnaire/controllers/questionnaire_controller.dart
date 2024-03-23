import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/questionnaire_model.dart';
import 'package:sharkfreefin/app/state/payment_strategy_question_state.dart';

class QuestionnaireController extends GetxController {
  late QuestionnaireModel question;
  RxDouble progressValue = 0.2.obs;
  late RxString chosenAnswer = question.answers![0].keys.first.obs;

  void changeAnswer(String? value) {
    print(value);
    chosenAnswer.value = value!;
  }

  void onNextPressed() {
    PaymentStrategyQuestionController.to.nextQuestion();
    question = Get.arguments;
    update(['question']);
  }

  void onBackPressed() {
    PaymentStrategyQuestionController.to.prevQuestion();
    question = Get.arguments;
    update(['question']);
  }

  @override
  void onInit() {
    super.onInit();
    question = Get.arguments;
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
