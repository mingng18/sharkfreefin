import 'package:get/get.dart';
import 'package:sharkfreefin/app/state/questionnaire_state_controller.dart';

class PaymentStrategyController extends GetxController {
  Rx<PaymentStrategy> selectedPaymentStrategy = PaymentStrategy.standard.obs;

  void changePaymentStrategy(PaymentStrategy strategy) {
    selectedPaymentStrategy.value = strategy;
  }

  void startQuestonnaire() {
    QuestionnaireStateController.to.startQuestion();
  }

  @override
  void onInit() {
    QuestionnaireStateController.to.initPaymentStrategiesQuestionSet();
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

enum PaymentStrategy {
  standard('Standard', "", "Pay the minimum off every debt.", "standard"),
  avalanche(
      "Avalanche",
      "Highest Interest Rate",
      "Pay off the highest interest debt first, then carry the repayment amount to pay off the lower interest rate debts.",
      "avalanche"),
  snowballLowestBalance(
      "Snowball",
      "Lowest Remaining Balance",
      "Pay off the smallest debt first, then carry the repayment amount to pay off the bigger debts.",
      "snowballLowestBalance"),
  snowballHighestBalance(
      "Snowball",
      "Highest Remaining Balance",
      "Pay off the largest debt first, then carry the repayment amount to pay off the smaller debts.",
      "snowballHighestBalance");

  const PaymentStrategy(this.title, this.subtitle, this.body, this.value);
  final String title;
  final String subtitle;
  final String body;
  final String value;
}
