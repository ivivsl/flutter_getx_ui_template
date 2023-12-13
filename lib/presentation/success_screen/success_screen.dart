import 'controller/success_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_icon_button.dart';

class SuccessScreen extends GetWidget<SuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 72,
                          width: 72,
                          variant: IconButtonVariant.OutlineLightblueA2003d,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCheckmark)),
                      Padding(
                          padding: getPadding(context, top: 15),
                          child: Text("lbl_success".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold24Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      Padding(
                          padding: getPadding(context, top: 11),
                          child: Text("msg_thank_you_for_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12Indigo90087(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      CustomButton(
                          height: getVerticalSize(context, 57),
                          text: "lbl_back_to_order".tr,
                          margin: getMargin(context, top: 16, bottom: 5),
                          onTap: () {
                            onTapBacktoorder();
                          })
                    ]))));
  }

  onTapBacktoorder() {
    Get.toNamed(
      AppRoutes.orderScreen,
    );
  }
}
