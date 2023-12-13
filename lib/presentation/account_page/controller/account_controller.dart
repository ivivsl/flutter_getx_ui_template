import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/account_page/models/account_model.dart';

class AccountController extends GetxController {
  AccountController(this.accountModelObj);

  Rx<AccountModel> accountModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
