import '../controller/register_form_controller.dart';
import 'package:get/get.dart';

class RegisterFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterFormController());
  }
}
