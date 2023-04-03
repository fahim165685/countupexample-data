import 'package:get/get.dart';

import '../modules/HomPage/bindings/hom_page_binding.dart';
import '../modules/HomPage/views/hom_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.HOM_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOM_PAGE,
      page: () => const HomPageView(),
      binding: HomPageBinding(),
    ),
  ];
}
