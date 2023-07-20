import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() async {
    super.onInit();
    print("launch before");
    await launchLoginScreen();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  launchLoginScreen() {
    Future.delayed(const Duration(seconds: 3));
    print("will launch");
    Get.toNamed(AppPages.LOGIN);
  }
  void increment() => count.value++;
}
