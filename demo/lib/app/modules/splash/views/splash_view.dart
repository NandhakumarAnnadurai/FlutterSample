import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  SplashView({Key? key}) : super(key: key);
  final splashController = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.lightBlue,
        child: Center(
          child: Text("Demo", style: const TextStyle(color: Colors.white,fontSize: 30),),
        )
      ),
    );
  }
}
