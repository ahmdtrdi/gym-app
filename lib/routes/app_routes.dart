import 'package:get/get.dart';
import 'package:gym/routes/routes_name.dart';

import '../views/onboarding.dart';

class AppRoutes {
  static const initRoute = RoutesName.onboarding;
  static final routes =[
    GetPage(
      name: RoutesName.onboarding,
      page: () => const Onboarding(),
    ),
  ];
}