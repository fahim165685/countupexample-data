import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:count_up_flutter/count_up_flutter.dart';

import '../controllers/hom_page_controller.dart';

class HomPageView extends GetView<HomPageController> {
  const HomPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomPageView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("TIME VALUE IS "),



          Obx(() =>  Text(controller.timeValue.value,
              style: const TextStyle(fontSize: 20))),



          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 30,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  controller.elapsedCountUpController.pause();
                },
                color: Colors.yellow,
                child: const Text(
                  "Pause",
                  style: TextStyle(),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  controller.elapsedCountUpController.resume();
                },
                color: Colors.green,
                child: const Text(
                  "Resume",
                  style: TextStyle(),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  controller.elapsedCountUpController.start();
                },
                color: Colors.red,
                child: const Text(
                  "Stop",
                  style: TextStyle(),
                ),
              ),
            ],
          ),
          ElapsedTimer(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 18,
            duration: 60 * 100,
            initialDuration: 0,
            fillColor: Colors.red,
            ringColor: const Color(0xffE1E6EC),
            controller: controller.elapsedCountUpController,
            backgroundColor: const Color(0xffE6D9EF),
            strokeWidth: 10.0,
            strokeCap: StrokeCap.round,
            isTimerTextShown: true,
            onStart: () {},
            textFormat: ElapsedTimerTextFormat.HH_MM_SS,
            isReverse: false,
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
            onComplete: () {},
          ),
          ElevatedButton(onPressed: () {
           controller.timeValue.value = controller.elapsedCountUpController.getTime();
          }, child: const Text("GET TIME VALUE"))
        ],
      ),
    );
  }
}
