import 'package:get/get.dart';

import 'app_routes.dart';
import 'package:food_app/screens/login.dart';
import 'package:food_app/screens/profile.dart';
import 'package:food_app/screens/register.dart';

class AppPages {
  AppPages._();

  static final pages = <GetPage>[
    GetPage(name: AppRoutes.check, page: () => const CheckoutScreen()),
    GetPage(name: AppRoutes.explore, page: () => const ExploreScreen()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
  ];
}
