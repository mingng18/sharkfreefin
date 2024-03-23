import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/chart_data_model.dart';

class LandingController extends GetxController {
  late List<ChartData> debtData;

  @override
  void onInit() {
    super.onInit();
    debtData = [
      ChartData('Cafe Hopping', 25),
      ChartData('House', 38),
      ChartData('Insurance', 34),
      ChartData('Food', 52)
    ];
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
