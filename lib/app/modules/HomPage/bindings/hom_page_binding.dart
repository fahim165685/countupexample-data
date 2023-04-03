import 'package:get/get.dart';

import '../controllers/hom_page_controller.dart';

class HomPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomPageController>(
      () => HomPageController(),
    );
  }
}
