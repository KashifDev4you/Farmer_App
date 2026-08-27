import 'package:get/get.dart';

import 'app_routes.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/screens/explore.dart';
import 'package:food_app/screens/checkout.dart';

class AppPages {
  AppPages._();

  static final pages = <GetPage>[
    GetPage(name: AppRoutes.check, page: () => const CheckoutScreen()),
    GetPage(name: AppRoutes.explore, page: () => const ExploreScreen()),
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
  ];
}
