import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharkfreefin/app/global.dart';
import 'package:sharkfreefin/app/utils/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put<GlobalService>(GlobalService());
  
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
