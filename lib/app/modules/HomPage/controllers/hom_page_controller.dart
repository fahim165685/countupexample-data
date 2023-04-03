import 'dart:async';

import 'package:count_up_flutter/count_up_flutter.dart';
import 'package:get/get.dart';


class HomPageController extends GetxController {
  ElapsedController elapsedCountUpController = ElapsedController();

  var timeValue = "00:00:00".obs;
  late Timer _timer;

  // <<<<<<<<<<<<<<<<<<<<<<<<<<<<AUTO timeValue update.>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
  @override
  void onInit() {
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
        timeValue.value = elapsedCountUpController.getTime();
    });
    super.onInit();
  }


  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }

}
