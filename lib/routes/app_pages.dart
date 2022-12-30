import 'package:get/get.dart';

import '../bindings/history_binding.dart';
import '../bindings/level_single_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/play_screen_binding.dart';
// import '../bindings/profile_detail_binding.dart';
import '../bindings/summary_binding.dart';
import '../screens/levelsingle_screen.dart';
import '../screens/login_screen.dart';
import '../view/history_screen.dart';
import '../view/play_screen.dart';
import '../view/summary_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.PLAY_SCREEN,
      page: () => PlayScreenView(),
      binding: PlayScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LEVEL_SINGLE,
      page: () => const LevelSingleView(),
      binding: LevelSingleBinding(),
    ),
    GetPage(
      name: _Paths.SUMMARY,
      page: () => const SummaryView(),
      binding: SummaryBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY_BY_SECTION,
      page: () => const HistoryBySectionView(),
      binding: HistoryBySectionBinding(),
    ),
    // GetPage(
    //   name: _Paths.PROFILE_DETAIL,
    //   page: () => const ProfileDetailView(),
    //   binding: ProfileDetailBinding(),
    // ),
  ];
}
