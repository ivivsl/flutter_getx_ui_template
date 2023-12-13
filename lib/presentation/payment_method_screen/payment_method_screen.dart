import 'controller/payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context,67),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft12();
                    }),
                title: AppbarTitle(
                    text: "lbl_payment".tr, margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, top: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapRowmobile();
                          },
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(context, all: 16),
                              decoration: AppDecoration.fillBlue50,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMobile,
                                        height: getSize(context, 24),
                                        width: getSize(context, 24)),
                                    Padding(
                                        padding: getPadding(context, 
                                            left: 16, top: 2, bottom: 3),
                                        child: Text("msg_credit_card_or".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold12Indigo900(context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                          context,
                                                            0.5))))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(context, all: 16),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgPaypalicon,
                                height: getSize(context, 24),
                                width: getSize(context, 24)),
                            Padding(
                                padding:
                                    getPadding(context, left: 16, top: 4, bottom: 1),
                                child: Text("lbl_paypal".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900(context)
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(context, 0.5))))
                          ])),
                      Container(
                          width: double.maxFinite,
                          margin: getMargin(context, bottom: 5),
                          padding: getPadding(context, all: 16),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgAirplane24x24,
                                    height: getSize(context, 24),
                                    width: getSize(context, 24)),
                                Padding(
                                    padding:
                                        getPadding(context, left: 16, top: 2, bottom: 3),
                                    child: Text("lbl_bank_transfer".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5))))
                              ]))
                    ]))));
  }

  onTapRowmobile() {
    Get.toNamed(
      AppRoutes.chooseCreditOrDebitCardScreen,
    );
  }

  onTapArrowleft12() {
    Get.back();
  }
}
