import 'controller/add_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_text_form_field.dart';

class AddCardScreen extends GetWidget<AddCardController> {
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
                    margin: getMargin(context,left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft22();
                    }),
                title: AppbarTitle(
                    text: "lbl_add_card".tr, margin: getMargin(context,left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_card_number".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900(context)
                              .copyWith(letterSpacing: getHorizontalSize(context, 0.5))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.entercardnumberOneController,
                          hintText: "msg_enter_card_numb".tr,
                          margin: getMargin(context,top: 12),
                          textInputType: TextInputType.number),
                      Padding(
                          padding: getPadding(context,top: 24),
                          child: Text("lbl_expiration_date".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.expirationdateOneController,
                          hintText: "lbl_expiration_date".tr,
                          margin: getMargin(context,top: 11),
                          padding: TextFormFieldPadding.PaddingT17_1),
                      Padding(
                          padding: getPadding(context,top: 29),
                          child: Text("lbl_security_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.securitycodeOneController,
                          hintText: "lbl_security_code".tr,
                          margin: getMargin(context,top: 11),
                          padding: TextFormFieldPadding.PaddingT17_1),
                      Padding(
                          padding: getPadding(context,top: 23),
                          child: Text("lbl_card_holder2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.entercardnumberThreeController,
                          hintText: "msg_enter_card_numb".tr,
                          margin: getMargin(context,top: 12, bottom: 5),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.number)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_add_card".tr,
                margin: getMargin(context,left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapAddcard();
                })));
  }

  onTapAddcard() {
    Get.toNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }

  onTapArrowleft22() {
    Get.back();
  }
}
