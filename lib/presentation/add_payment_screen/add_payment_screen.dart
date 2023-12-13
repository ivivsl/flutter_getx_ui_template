import 'controller/add_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class AddPaymentScreen extends GetWidget<AddPaymentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 67),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft20();
                    }),
                title: AppbarTitle(
                    text: "lbl_payment".tr,
                    margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, top: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: onTapRowmobile,
                          child:
                              _widgetBody(context, text: 'msg_credit_card_or')),
                      _widgetBody(context, text: 'lbl_paypal'),
                      _widgetBody(context, text: 'lbl_bank_transfer'),
                      SizedBox(height: getSize(context, 5))
                    ]))));
  }

  Widget _widgetBody(BuildContext context, {required String text}) {
    return Container(
        width: double.maxFinite,
        padding: getPadding(context, all: 16),
        decoration: AppDecoration.fillWhiteA700,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              svgPath: ImageConstant.imgAirplane24x24,
              height: getSize(context, 24),
              width: getSize(context, 24)),
          Padding(
              padding: getPadding(context, left: 16, top: 2, bottom: 3),
              child: Text(text.tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold12Indigo900(context).copyWith(
                      letterSpacing: getHorizontalSize(context, 0.5))))
        ]));
  }

  onTapRowmobile() {
    Get.toNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }

  onTapArrowleft20() {
    Get.back();
  }
}
