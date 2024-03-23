import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/questionnaire_model.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/utils/json_util.dart';

class PaymentStrategyQuestionController extends GetxService {
  static PaymentStrategyQuestionController get to => Get.find();
  List<QuestionnaireModel> questionSet = [];
  RxInt currentNumber = 0.obs;
  double progress = 0;

  void startQuestion() {
    currentNumber.value = -1;
    nextQuestion();
  }

  void nextQuestion() {
    currentNumber++;
    print(currentNumber.value);
    if (currentNumber.value == questionSet.length) {
      Get.toNamed(
        Routes.ALERT_MESSAGE,
      );
    } else {
      Get.toNamed(Routes.QUESTIONNAIRE,
          arguments: questionSet[currentNumber.value],
          preventDuplicates: false);
      print({"next is ${questionSet[currentNumber.value]}"});
    }
  }

  void prevQuestion() {
    currentNumber--;
    print(currentNumber.value);
    Get.back();
    print({"back is ${questionSet[currentNumber.value]}"});
  }

  double calculateProgress() {
    progress = (currentNumber.value + 1) / (questionSet.length + 1);
    return progress;
  }

  @override
  void onInit() async {
    super.onInit();
    Map<String, dynamic> paymentData = await JsonUtil.loadJsonFromAssets(
        "lib/app/data/sample/payment_strategies_ques.json");

    paymentData.forEach((key, value) {
      QuestionnaireModel questionnaire = QuestionnaireModel.fromMap(value);
      questionSet.add(questionnaire);
    });

    print(questionSet[0]);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
