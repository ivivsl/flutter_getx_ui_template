import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/profile_screen/models/profile_model.dart';
import 'package:meng_s_application1/data/models/me/get_me_resp.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  GetMeResp getMeResp = GetMeResp();

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      // await this.callFetchMe();
      _onFetchMeSuccess();
    } on GetMeResp {
      _onFetchMeError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> callFetchMe() async {
    try {
      _handleFetchMeSuccess();
    } on GetMeResp catch (e) {
      getMeResp = e;
      rethrow;
    }
  }

  void _handleFetchMeSuccess() {
    profileModelObj.value.emailOneTxt.value = getMeResp.data!.email!.toString();
    profileModelObj.value.nameTxt.value = getMeResp.data!.name!.toString();
  }

  void _onFetchMeSuccess() {}
  void _onFetchMeError() {}
}
