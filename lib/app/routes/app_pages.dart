import 'package:get/get.dart';

import '../modules/all_debts/bindings/all_debts_binding.dart';
import '../modules/all_debts/views/all_debts_view.dart';
import '../modules/create_debts/bindings/create_debts_binding.dart';
import '../modules/create_debts/views/create_debts_view.dart';
import '../modules/debt/bindings/debt_binding.dart';
import '../modules/debt/views/debt_view.dart';
import '../modules/debt_details/bindings/debt_details_binding.dart';
import '../modules/debt_details/views/debt_details_view.dart';
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
    GetPage(
      name: _Paths.ALL_DEBTS,
      page: () => const AllDebtsView(),
      binding: AllDebtsBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_DEBTS,
      page: () => const CreateDebtsView(),
      binding: CreateDebtsBinding(),
    ),
    GetPage(
      name: _Paths.DEBT_DETAILS,
      page: () => const DebtDetailsView(),
      binding: DebtDetailsBinding(),
    ),
  ];
}
