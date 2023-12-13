import 'controller/account_controller.dart';
import 'models/account_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AccountPage extends StatelessWidget {
  AccountController controller = Get.put(AccountController(AccountModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(width: size(context).width,
          height: getVerticalSize(context, 66),
          title: AppbarTitle(
              text: "lbl_account".tr, margin: getMargin(context, left: 16)),
          actions: [
            AppbarImage(
                height: getSize(context, 24),
                width: getSize(context, 24),
                svgPath: ImageConstant.imgNotification,
                margin: getMargin(context,
                    left: 13, top: 15, right: 13, bottom: 16),
                onTap: () {
                  onTapNotification4();
                })
          ]),
      body: Container(
        width: double.maxFinite,
        padding: getPadding(context, top: 11, bottom: 11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _tapWidget(context, onTap: onTapUser, text: 'lbl_profile'),
            _tapWidget(context, onTap: onTapOrder, text: 'lbl_order'),
            _tapWidget(context, onTap: onTapAddress, text: 'lbl_address'),
            _tapWidget(context, onTap: onTapPayment, text: 'lbl_payment'),
          ],
        ),
      ),
    ));
  }

  GestureDetector _tapWidget(BuildContext context,
          {required VoidCallback onTap, required String text}) =>
      GestureDetector(
          onTap: onTap,
          child: Container(
              width: double.maxFinite,
              padding: getPadding(context, all: 16),
              decoration: AppDecoration.fillWhiteA700,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    svgPath: ImageConstant.imgUser24x24,
                    height: getSize(context, 24),
                    width: getSize(context, 24)),
                Padding(
                    padding: getPadding(context, left: 16, top: 2, bottom: 3),
                    child: Text(text.tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold12Indigo900(context)
                            .copyWith(
                                letterSpacing:
                                    getHorizontalSize(context, 0.5))))
              ])));

  onTapUser() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  onTapOrder() {
    Get.toNamed(
      AppRoutes.orderScreen,
    );
  }

  onTapAddress() {
    Get.toNamed(
      AppRoutes.addressScreen,
    );
  }

  onTapPayment() {
    Get.toNamed(
      AppRoutes.addPaymentScreen,
    );
  }

  onTapNotification4() {
    Get.toNamed(
      AppRoutes.notificationOneScreen,
    );
  }
}
