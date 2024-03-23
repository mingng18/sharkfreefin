import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharkfreefin/app/modules/alert_message/controllers/alert_message_controller.dart';
import 'package:sharkfreefin/app/modules/behavior/controllers/behavior_controller.dart';
import 'package:sharkfreefin/app/modules/community/controllers/community_controller.dart';
import 'package:sharkfreefin/app/modules/landing/controllers/landing_controller.dart';
import 'package:sharkfreefin/app/state/global.dart';
import 'package:sharkfreefin/app/state/questionnaire_state_controller.dart';
import 'package:sharkfreefin/app/utils/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<GlobalService>(GlobalService());
  Get.put<BehaviorController>(BehaviorController());
  Get.put<LandingController>(LandingController());
  Get.put<CommunityController>(CommunityController());
  Get.put<AlertMessageController>(AlertMessageController());
  Get.put<QuestionnaireStateController>(QuestionnaireStateController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SharkFreeFin',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().light(),
      darkTheme: AppTheme().dark(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
