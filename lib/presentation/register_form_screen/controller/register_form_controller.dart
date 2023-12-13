import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/register_form_screen/models/register_form_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/data/models/register/post_register_resp.dart';

class RegisterFormController extends GetxController {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController youremailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordagainController = TextEditingController();

  Rx<RegisterFormModel> registerFormModelObj = RegisterFormModel().obs;

  PostRegisterResp postRegisterResp = PostRegisterResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullnameController.dispose();
    youremailController.dispose();
    passwordController.dispose();
    passwordagainController.dispose();
  }

  Future<void> callCreateRegister(Map req) async {
    try {
      _handleCreateRegisterSuccess();
    } on PostRegisterResp catch (e) {
      postRegisterResp = e;
      rethrow;
    }
  }

  void _handleCreateRegisterSuccess() {
    Get.find<PrefUtils>().setId(postRegisterResp.data!.id!.toString());
  }
}
