import 'controller/change_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft15();
                    }),
                title: AppbarTitle(
                    text: "lbl_change_password".tr,
                    margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, left: 16, top: 26, right: 16, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_old_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900(context)
                              .copyWith(letterSpacing: getHorizontalSize(context, 0.5))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.oldpasswordOneController,
                          hintText: "msg".tr,
                          margin: getMargin(context, top: 12),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsBold12Bluegray300,
                          prefix: Container(
                              margin: getMargin(context,
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(context, 48))),
                      Padding(
                          padding: getPadding(context, top: 23),
                          child: Text("lbl_new_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.newpasswordOneController,
                          hintText: "msg".tr,
                          margin: getMargin(context, top: 12),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsBold12Bluegray300,
                          prefix: Container(
                              margin: getMargin(context,
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(context, 48))),
                      Padding(
                          padding: getPadding(context, top: 24),
                          child: Text("msg_new_password_ag".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.newpasswordagaiTwoController,
                          hintText: "msg".tr,
                          margin: getMargin(context, top: 11, bottom: 5),
                          variant: TextFormFieldVariant.OutlineBlue50_1,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsBold12Bluegray300,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(context,
                                  left: 16, top: 12, right: 10, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(context, 48)))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_save".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapSave();
                })));
  }

  onTapSave() {
    Get.offNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapArrowleft15() {
    Get.back();
  }
}
