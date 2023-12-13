import '../controller/search_result_one_controller.dart';
import 'package:get/get.dart';

class SearchResultOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultOneController());
  }
}
