import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/modules/debt/views/debt_view.dart';
import 'package:sharkfreefin/app/modules/gig/views/gig_view.dart';

import '../controllers/home_controller.dart';
import 'package:sharkfreefin/app/widgets/bottom_nav_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return BottomNavBar(
          selectedIndex: controller.tabIndex.value,
          onDestinationSelected: (int index) {
            controller.changeTabIndex(index);
          },
        );
      }),
      body: SafeArea(
        child: Obx(() => IndexedStack(
              index: controller.tabIndex.value,
              children: const [
                DebtView(),
                GigView(),
              ],
            )),
      ),
    );
  }
}
