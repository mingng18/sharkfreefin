import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/chart_data_model.dart';

class DebtAnalyticDetailsController extends GetxController {

late List<ChartData> debtData;
late List<ChartData> payoffTimelineData;

  @override
  void onInit() {
    super.onInit();
    debtData = [
      ChartData('Car', 25),
      ChartData('House', 38),
      ChartData('Insurance', 34),
      ChartData('Others', 52)
    ];
    payoffTimelineData = [
      ChartData('Dec 2023', 10000),
      ChartData('Feb 2024', 8000),
      ChartData('May 2024', 6000),
      ChartData('Aug 2024', 3500),
      ChartData('Dec 2024', 0),
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
