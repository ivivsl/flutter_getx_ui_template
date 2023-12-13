import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/choose_credit_or_debit_card_screen/models/choose_credit_or_debit_card_model.dart';

class ChooseCreditOrDebitCardController extends GetxController {
  Rx<ChooseCreditOrDebitCardModel> chooseCreditOrDebitCardModelObj =
      ChooseCreditOrDebitCardModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
