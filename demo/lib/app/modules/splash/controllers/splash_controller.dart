import 'package:demo/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print("splash start");
    launchLoginScreen();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  launchLoginScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    print("splash end");
    Get.offAllNamed(AppPages.LOGIN);
  }

  void increment() => count.value++;
}
