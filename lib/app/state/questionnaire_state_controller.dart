import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/alert_message_model.dart';
import 'package:sharkfreefin/app/data/model/questionnaire_model.dart';
import 'package:sharkfreefin/app/modules/alert_message/controllers/alert_message_controller.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/utils/json_util.dart';

class QuestionnaireStateController extends GetxService {
  static QuestionnaireStateController get to => Get.find();
  List<QuestionnaireModel> questionSet = [];
  RxInt currentNumber = 0.obs;
  double progress = 0;
  QuestionnaireType currentQuestionnaire = QuestionnaireType.paymentStrategy;

  void startQuestion() {
    progress = 0;
    currentNumber.value = -1;
    nextQuestion();
  }

  void nextQuestion() {
    currentNumber++;
    print(currentNumber.value);
    if (currentNumber.value == questionSet.length) {
      if (currentQuestionnaire == QuestionnaireType.paymentStrategy) {
        AlertMessageController.to.displayAlertPage(AlertMessageModel(
            title: "Successfully Filled!",
            body:
                "The best payment strategy will sooned be analysed and sent back to you!",
            buttonText: "Back to Payment Strategy",
            routeName: Routes.PAYMENT_STRATEGY));
      } else if (currentQuestionnaire == QuestionnaireType.spendingBehaviour) {
        AlertMessageController.to.displayAlertPage(AlertMessageModel(
            title: "Successfully Filled",
            body: "Thanks for filling in your expenditure!",
            buttonText: "Back to Home",
            routeName: Routes.HOME));
      }
    } else {
      Get.toNamed(Routes.QUESTIONNAIRE,
          arguments: questionSet[currentNumber.value],
          preventDuplicates: false);
      // print({"next is ${questionSet[currentNumber.value]}"});
    }
  }

  void prevQuestion() {
    currentNumber--;
    print(currentNumber.value);
    Get.back();
    // print({"back is ${questionSet[currentNumber.value]}"});
  }

  double calculateProgress() {
    progress = (currentNumber.value + 1) / (questionSet.length + 1);
    return progress;
  }

  void initPaymentStrategiesQuestionSet() async {
    questionSet = [];
    Map<String, dynamic> paymentData = await JsonUtil.loadJsonFromAssets(
        "lib/app/data/sample/payment_strategies_ques.json");

    paymentData.forEach((key, value) {
      QuestionnaireModel questionnaire = QuestionnaireModel.fromMap(value);
      questionSet.add(questionnaire);
    });
    currentQuestionnaire = QuestionnaireType.paymentStrategy;

    print("payment - ${questionSet[0]}");
  }

  Future<void> initSpendingBehaviourQuestionSet() async {
    questionSet = [];
    Map<String, dynamic> paymentData = await JsonUtil.loadJsonFromAssets(
        "lib/app/data/sample/spending_behavior_ques.json");

    paymentData.forEach((key, value) {
      QuestionnaireModel questionnaire = QuestionnaireModel.fromMap(value);
      questionSet.add(questionnaire);
    });
    currentQuestionnaire = QuestionnaireType.spendingBehaviour;

    print("spending - ${questionSet[0]}");
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

enum QuestionnaireType { paymentStrategy, spendingBehaviour }
