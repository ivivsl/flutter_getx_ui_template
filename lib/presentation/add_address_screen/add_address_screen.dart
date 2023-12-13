import 'controller/add_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_text_form_field.dart';

class AddAddressScreen extends GetWidget<AddAddressController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 24),
                leadingWidth: 40, 
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16),
                    onTap: () {
                      onTapArrowleft18();
                    }),
                title: AppbarTitle(
                    text: "lbl_add_address".tr, margin: getMargin(context, left: 12))),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(context, left: 16, top: 45, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_country_or_regi".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                  (context)
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(context, 0.5))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.oldpasswordController,
                                  hintText: "msg_enter_the_count".tr,
                                  margin: getMargin(context, top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(context, top: 22),
                                  child: Text("lbl_first_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordOneController,
                                  hintText: "msg_enter_the_first".tr,
                                  margin: getMargin(context, top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(context, top: 22),
                                  child: Text("lbl_last_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context,0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordTwoController,
                                  hintText: "msg_enter_the_last".tr,
                                  margin: getMargin(context, top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(context, top: 23),
                                  child: Text("lbl_street_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordThreeController,
                                  hintText: "msg_enter_the_stree".tr,
                                  margin: getMargin(context, top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(context, top: 21),
                                  child: Text("msg_street_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordFourController,
                                  hintText: "msg_enter_the_stree2".tr,
                                  margin: getMargin(context, top: 16),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(context, top: 22),
                                  child: Text("lbl_city".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordFiveController,
                                  hintText: "lbl_enter_the_city".tr,
                                  margin: getMargin(context, top: 11),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(context, top: 23),
                                  child: Text("msg_state_province".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordSixController,
                                  hintText: "msg_enter_the_state".tr,
                                  margin: getMargin(context, top: 12),
                                  variant:
                                      TextFormFieldVariant.OutlineBlue50_1),
                              Padding(
                                  padding: getPadding(context, top: 24),
                                  child: Text("lbl_zip_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordSevenController,
                                  hintText: "msg_enter_the_zip_c".tr,
                                  margin: getMargin(context, top: 11),
                                  variant: TextFormFieldVariant.OutlineBlue50_1,
                                  textInputType: TextInputType.number),
                              Padding(
                                  padding: getPadding(context, top: 23),
                                  child: Text("lbl_phone_number".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.oldpasswordEightController,
                                  hintText: "msg_enter_the_phone".tr,
                                  margin: getMargin(context, top: 12),
                                  variant: TextFormFieldVariant.OutlineBlue50_1,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.phone)
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_add_address".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapAddaddress();
                })));
  }

  onTapAddaddress() {
    Get.toNamed(
      AppRoutes.addressScreen,
    );
  }

  onTapArrowleft18() {
    Get.back();
  }
}
