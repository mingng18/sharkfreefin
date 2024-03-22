import 'package:get/get.dart';

class LandingController extends GetxController {
  //TODO: Implement LandingController

  late List<ChartData> debtData;

  
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    super.onInit();
    debtData = [
      ChartData('Cafe Hopping', 25),
      ChartData('House Rental', 38),
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

  void increment() => count.value++;



}

class ChartData {
  ChartData(this.x, this.y);
 
  final String x;
  final double y;
}
