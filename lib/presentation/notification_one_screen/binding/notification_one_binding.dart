import '../controller/notification_one_controller.dart';
import 'package:get/get.dart';

class NotificationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationOneController());
  }
}
