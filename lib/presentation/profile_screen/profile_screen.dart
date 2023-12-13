import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 65),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context, 24), 
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft14();
                    }),
                title: AppbarTitle(
                    text: "lbl_profile".tr, margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, top: 36, bottom: 36),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(context, left: 16),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgProfilepicture72x72,
                                    height: getSize(context,72),
                                    width: getSize(context, 72),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(context, 36)),
                                    onTap: () {
                                      onTapImgProfilepicture();
                                    }),
                                Padding(
                                    padding: getPadding(context, 
                                        left: 16, top: 9, bottom: 14),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Obx(() => Text(
                                              controller.profileModelObj.value
                                                  .nameTxt.value,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold14Indigo900(context)
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                            context,
                                                              0.5)))),
                                          Padding(
                                              padding: getPadding(context, top: 8),
                                              child: Obx(() => Text(
                                                  controller.profileModelObj
                                                      .value.usernameTxt.value,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12(context)
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                context,
                                                                  0.5)))))
                                        ]))
                              ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(context, top: 32),
                          padding: getPadding(context, 
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getSize(context, 24),
                                    width: getSize(context, 24)),
                                Padding(
                                    padding:
                                        getPadding(context, left: 16, top: 2, bottom: 3),
                                    child: Text("lbl_gender".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(context, top: 2, bottom: 3),
                                    child: Text("lbl_male".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(context, 24),
                                    width: getSize(context, 24),
                                    margin: getMargin(context, left: 16))
                              ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(context, 
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCalendar,
                                height: getSize(context, 24),
                                width: getSize(context, 24)),
                            Padding(
                                padding:
                                    getPadding(context, left: 16, top: 3, bottom: 2),
                                child: Text("lbl_birthday".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900(context)
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(context, 0.5)))),
                            Spacer(),
                            Padding(
                                padding: getPadding(context, top: 2, bottom: 3),
                                child: Text("lbl_12_12_2000".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12(context)
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(context, 0.5)))),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(context, 24),
                                width: getSize(context, 24),
                                margin: getMargin(context, left: 16))
                          ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(context, 
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMail24x24,
                                height: getSize(context,24),
                                width: getSize(context,24)),
                            Padding(
                                padding:
                                    getPadding(context, left: 16, top: 2, bottom: 3),
                                child: Text("lbl_email".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900(context)
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(context, 0.5)))),
                            Spacer(),
                            Padding(
                                padding: getPadding(context, top: 4, bottom: 1),
                                child: Obx(() => Text(
                                    controller.profileModelObj.value.emailOneTxt
                                        .value,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12(context)
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(context, 0.5))))),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowright,
                                height: getSize(context, 24),
                                width: getSize(context, 24),
                                margin: getMargin(context, left: 16))
                          ])),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(context, 
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMobile,
                                    height: getSize(context, 24),
                                    width: getSize(context, 24)),
                                Padding(
                                    padding:
                                        getPadding(context, left: 16, top: 2, bottom: 3),
                                    child: Text("lbl_phone_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(context, top: 2, bottom: 3),
                                    child: Text("lbl_307_555_0133".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(context,24),
                                    width: getSize(context,24),
                                    margin: getMargin(context, left: 16))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapChangepassword();
                          },
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(context, bottom: 5),
                              padding: getPadding(context, 
                                  left: 16, top: 15, right: 16, bottom: 15),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLock24x24,
                                    height: getSize(context,24),
                                    width: getSize(context,24)),
                                Padding(
                                    padding:
                                        getPadding(context, left: 16, top: 4, bottom: 1),
                                    child: Text("lbl_change_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(context, top: 3, bottom: 3),
                                    child: Text("msg".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: getSize(context, 24),
                                    width: getSize(context, 24),
                                    margin: getMargin(context, left: 16))
                              ])))
                    ]))));
  }

  onTapImgProfilepicture() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    await FileManager().showModelSheetForImage(getImages: (value) async {
    });
  }

  onTapChangepassword() {
    Get.toNamed(
      AppRoutes.changePasswordScreen,
    );
  }

  onTapArrowleft14() {
    Get.back();
  }
}
