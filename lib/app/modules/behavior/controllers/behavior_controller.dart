import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharkfreefin/app/data/model/chart_data_model.dart';
import 'package:sharkfreefin/app/data/model/suggestion_model.dart';
import 'package:sharkfreefin/app/utils/json_util.dart';

class BehaviorController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late List<ChartData> debtData;
  late TabController tabController;
  List<SuggestionData> suggestions = [];

  @override
  void onInit() async {
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
    debtData = [
      ChartData('Cafe Hopping', 25),
      ChartData('House', 38),
      ChartData('Insurance', 34),
      ChartData('Food', 52)
    ];

    Map<String, dynamic> suggestionData = await JsonUtil.loadJsonFromAssets(
        "lib/app/data/sample/suggestions.json");
    suggestionData.forEach((key, value) {
      SuggestionData suggestion = SuggestionData.fromMap(value);
      suggestions.add(suggestion);
      print(suggestion);
    });

    print("length of suggestion is ${suggestions[0]}");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
