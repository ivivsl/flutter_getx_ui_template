import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(
        AppRoutes.loginScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
