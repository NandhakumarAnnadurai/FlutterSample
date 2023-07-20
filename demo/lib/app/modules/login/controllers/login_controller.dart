import 'package:demo/app/common/BaseController.dart';
import 'package:demo/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  //TODO: Implement LoginController

  final userNameEditingController = TextEditingController();
  final passWordEditingController = TextEditingController();

  void login() {
    if (userNameEditingController.text.isEmpty) {
      showAlertDialog(title: "Demo", description: "User name cannot be empty");
      return;
    }
    if (passWordEditingController.text.isEmpty) {
      showAlertDialog(title: "Demo", description: "Password cannot be empty");
      return;
    }
    Get.offAllNamed(AppPages.HOME);
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

}
