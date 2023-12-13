import 'controller/lailyfa_febrina_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_text_form_field.dart';

class LailyfaFebrinaCardScreen extends GetWidget<LailyfaFebrinaCardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                width: size(context).width,
                height: getVerticalSize(context, 56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(context, 26),
                    width: getHorizontalSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 14, bottom: 15),
                    onTap: () {
                      onTapArrowleft23();
                    }),
                title: AppbarTitle(
                    text: "msg_lailyfa_febrina".tr,
                    margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,
                    left: 14, top: 19, right: 14, bottom: 19),
                child: ListView(children: [
                  Container(
                      width: double.maxFinite,
                      child: Container(
                          margin: getMargin(context, left: 2),
                          padding: getPadding(context,
                              left: 21, top: 23, right: 21, bottom: 23),
                          decoration: AppDecoration.fillLightblueA200.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.roundedBorder5(context)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getVerticalSize(context, 22),
                                    width: getHorizontalSize(context, 36),
                                    margin: getMargin(context, left: 3)),
                                Padding(
                                    padding: getPadding(context, top: 30),
                                    child: Text("msg_6326_9124".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtPoppinsBold24(context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            context, 0.5)))),
                                Padding(
                                    padding: getPadding(context, top: 17),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(context, top: 2),
                                          child: Text("lbl_card_holder".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                      .txtPoppinsRegular10WhiteA70087(
                                                          context)
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              context, 0.5)))),
                                      Padding(
                                          padding: getPadding(context,
                                              left: 37, bottom: 2),
                                          child: Text("lbl_card_save".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                      .txtPoppinsRegular10WhiteA70087(
                                                          context)
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              context, 0.5))))
                                    ])),
                                Padding(
                                    padding: getPadding(context, top: 1),
                                    child: Row(children: [
                                      Padding(
                                          padding: getPadding(context, top: 3),
                                          child: Text("lbl_lailyfa_febrina".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                      .txtPoppinsBold10WhiteA700(
                                                          context)
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              context, 0.5)))),
                                      Padding(
                                          padding: getPadding(context,
                                              left: 32, bottom: 3),
                                          child: Text("lbl_06_24".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                      .txtPoppinsBold10WhiteA700(
                                                          context)
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              context, 0.5))))
                                    ]))
                              ]))),
                  Padding(
                      padding: getPadding(context, left: 4, top: 23),
                      child: Text("lbl_card_number".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900(context)
                              .copyWith(
                                  letterSpacing:
                                      getHorizontalSize(context, 0.5)))),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: controller.cardnumberOneController,
                      hintText: "msg_1231_2312_3".tr,
                      margin: getMargin(context, left: 4, top: 12),
                      padding: TextFormFieldPadding.PaddingT17_1,
                      fontStyle:
                          TextFormFieldFontStyle.PoppinsSemiBold12Bluegray300),
                  Padding(
                      padding: getPadding(context, left: 4, top: 24),
                      child: Text("lbl_expiration_date".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900(context)
                              .copyWith(
                                  letterSpacing:
                                      getHorizontalSize(context, 0.5)))),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: controller.expirationdateOneController,
                      hintText: "lbl_12_12".tr,
                      margin: getMargin(context, left: 4, top: 11),
                      padding: TextFormFieldPadding.PaddingT17_1,
                      fontStyle:
                          TextFormFieldFontStyle.PoppinsSemiBold12Bluegray300),
                  Padding(
                      padding: getPadding(context, left: 2, top: 29),
                      child: Text("lbl_security_code".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900(context)
                              .copyWith(
                                  letterSpacing:
                                      getHorizontalSize(context, 0.5)))),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: controller.zipcodeController,
                      hintText: "lbl_1219".tr,
                      margin: getMargin(context, left: 2, top: 11),
                      padding: TextFormFieldPadding.PaddingT17_1,
                      fontStyle:
                          TextFormFieldFontStyle.PoppinsSemiBold12Bluegray300),
                  Padding(
                      padding: getPadding(context, left: 4, top: 23),
                      child: Text("lbl_card_holder2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900(context)
                              .copyWith(
                                  letterSpacing:
                                      getHorizontalSize(context, 0.5)))),
                  CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: controller.cardholdernameController,
                      hintText: "lbl_lailyfa_febrina".tr,
                      margin: getMargin(context, left: 4, top: 12, bottom: 5),
                      padding: TextFormFieldPadding.PaddingT17_1,
                      fontStyle:
                          TextFormFieldFontStyle.PoppinsSemiBold12Bluegray300,
                      textInputAction: TextInputAction.done)
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
    Get.toNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }

  onTapArrowleft23() {
    Get.back();
  }
}
