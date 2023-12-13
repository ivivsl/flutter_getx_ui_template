import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/address_screen/models/address_model.dart';

class AddressController extends GetxController {
  Rx<AddressModel> addressModelObj = AddressModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
