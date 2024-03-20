import 'package:get/get.dart';

import '../modules/debt/bindings/debt_binding.dart';
import '../modules/debt/views/debt_view.dart';
import '../modules/gig/bindings/gig_binding.dart';
import '../modules/gig/views/gig_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GIG,
      page: () => const GigView(),
      binding: GigBinding(),
    ),
    GetPage(
      name: _Paths.DEBT,
      page: () => const DebtView(),
      binding: DebtBinding(),
    ),
  ];
}
