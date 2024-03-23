import 'package:get/get.dart';
import 'package:sharkfreefin/app/modules/create_help/views/create_help_view2.dart';

import '../modules/alert_message/bindings/alert_message_binding.dart';
import '../modules/alert_message/views/alert_message_view.dart';
import '../modules/all_debts/bindings/all_debts_binding.dart';
import '../modules/all_debts/views/all_debts_view.dart';
import '../modules/behavior/bindings/behavior_binding.dart';
import '../modules/behavior/views/behavior_view.dart';
import '../modules/bulk_purchase/bindings/bulk_purchase_binding.dart';
import '../modules/bulk_purchase/views/bulk_purchase_view.dart';
import '../modules/community/bindings/community_binding.dart';
import '../modules/community/views/behavior_question_start_view.dart';
import '../modules/community/views/community_view.dart';
import '../modules/create_debts/bindings/create_debts_binding.dart';
import '../modules/create_debts/views/create_debts_view.dart';
import '../modules/create_help/bindings/create_help_binding.dart';
import '../modules/create_help/views/create_help_view.dart';
import '../modules/debt/bindings/debt_binding.dart';
import '../modules/debt/views/debt_view.dart';
import '../modules/debt_analytic_details/bindings/debt_analytic_details_binding.dart';
import '../modules/debt_analytic_details/views/debt_analytic_details_view.dart';
import '../modules/debt_details/bindings/debt_details_binding.dart';
import '../modules/debt_details/views/debt_details_view.dart';
import '../modules/debt_materials/bindings/debt_materials_binding.dart';
import '../modules/debt_materials/views/debt_materials_view.dart';
import '../modules/debt_materials_details/bindings/debt_materials_details_binding.dart';
import '../modules/debt_materials_details/views/debt_materials_details_view.dart';
import '../modules/dmp_program/bindings/dmp_program_binding.dart';
import '../modules/dmp_program/views/dmp_program_view.dart';
import '../modules/gig/bindings/gig_binding.dart';
import '../modules/gig/views/gig_view.dart';
import '../modules/help/bindings/help_binding.dart';
import '../modules/help/views/help_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/payment_strategy/bindings/payment_strategy_binding.dart';
import '../modules/payment_strategy/views/payment_strategy_view.dart';
import '../modules/purchase_good_detail/bindings/purchase_good_detail_binding.dart';
import '../modules/purchase_good_detail/views/purchase_good_detail_view.dart';
import '../modules/questionnaire/bindings/questionnaire_binding.dart';
import '../modules/questionnaire/views/questionnaire_view.dart';

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
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY,
      page: () => const CommunityView(),
      binding: CommunityBinding(),
    ),
    GetPage(
      name: _Paths.BEHAVIOR,
      page: () => const BehaviorView(),
      binding: BehaviorBinding(),
    ),
    GetPage(
      name: _Paths.DEBT_ANALYTIC_DETAILS,
      page: () => const DebtAnalyticDetailsView(),
      binding: DebtAnalyticDetailsBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_STRATEGY,
      page: () => const PaymentStrategyView(),
      binding: PaymentStrategyBinding(),
    ),
    GetPage(
      name: _Paths.DMP_PROGRAM,
      page: () => const DmpProgramView(),
      binding: DmpProgramBinding(),
    ),
    GetPage(
      name: _Paths.DEBT_MATERIALS,
      page: () => const DebtMaterialsView(),
      binding: DebtMaterialsBinding(),
    ),
    GetPage(
      name: _Paths.DEBT_MATERIALS_DETAILS,
      page: () => const DebtMaterialsDetailsView(),
      binding: DebtMaterialsDetailsBinding(),
    ),
    GetPage(
      name: _Paths.QUESTIONNAIRE,
      page: () => const QuestionnaireView(),
      binding: QuestionnaireBinding(),
    ),
    GetPage(
      name: _Paths.ALERT_MESSAGE,
      page: () => const AlertMessageView(),
      binding: AlertMessageBinding(),
    ),
    GetPage(
      name: _Paths.BULK_PURCHASE,
      page: () => const BulkPurchaseView(),
      binding: BulkPurchaseBinding(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => const HelpView(),
      binding: HelpBinding(),
    ),
    GetPage(
      name: _Paths.PURCHASE_GOOD_DETAIL,
      page: () => const PurchaseGoodDetailView(),
      binding: PurchaseGoodDetailBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_HELP,
      page: () => const CreateHelpView(),
      binding: CreateHelpBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_HELP2,
      page: () => const CreateHelpView2(),
      binding: CreateHelpBinding(),
    ),
    GetPage(
      name: _Paths.BEHAVIOR_START,
      page: () => const BehaviorQuesStartView(),
    ),
  ];
}
