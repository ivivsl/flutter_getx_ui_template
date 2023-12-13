import '../controller/sort_by_controller.dart';
import 'package:get/get.dart';

class SortByBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SortByController());
  }
}
