import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/dashboard_container_screen/models/dashboard_container_model.dart';

class DashboardContainerController extends GetxController {
  var token = Get.arguments[NavigationArgs.token];

  var id = Get.arguments[NavigationArgs.id];

  Rx<DashboardContainerModel> dashboardContainerModelObj =
      DashboardContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
