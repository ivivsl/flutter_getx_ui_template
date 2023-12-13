import '../controller/dashboard_container_controller.dart';
import 'package:get/get.dart';

class DashboardContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardContainerController());
  }
}
