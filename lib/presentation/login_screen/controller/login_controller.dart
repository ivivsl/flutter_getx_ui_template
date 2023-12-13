import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/data/models/login/post_login_resp.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  PostLoginResp postLoginResp = PostLoginResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  Future<void> callCreateLogin(Map req) async {
    try {
      // postLoginResp = await Get.find<ApiClient>().createLogin(
      //   headers: {
      //     'Content-type': 'application/json',
      //   },
      //   requestData: req,
      // );
      _handleCreateLoginSuccess();
    } on PostLoginResp catch (e) {
      postLoginResp = e;
      rethrow;
    }
  }

  void _handleCreateLoginSuccess() {
  }
}
