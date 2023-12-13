import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/cart_page/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartController extends GetxController {
  CartController(this.cartModelObj);

  TextEditingController coponcodefieldController = TextEditingController();

  Rx<CartModel> cartModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    coponcodefieldController.dispose();
  }
}
