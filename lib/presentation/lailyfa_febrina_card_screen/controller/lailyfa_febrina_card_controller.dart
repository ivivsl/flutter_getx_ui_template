import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/lailyfa_febrina_card_screen/models/lailyfa_febrina_card_model.dart';
import 'package:flutter/material.dart';

class LailyfaFebrinaCardController extends GetxController {
  TextEditingController cardnumberOneController = TextEditingController();

  TextEditingController expirationdateOneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController cardholdernameController = TextEditingController();

  Rx<LailyfaFebrinaCardModel> lailyfaFebrinaCardModelObj =
      LailyfaFebrinaCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    cardnumberOneController.dispose();
    expirationdateOneController.dispose();
    zipcodeController.dispose();
    cardholdernameController.dispose();
  }
}
