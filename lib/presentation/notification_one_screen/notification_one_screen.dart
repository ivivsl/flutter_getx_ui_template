import 'controller/notification_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationOneScreen extends GetWidget<NotificationOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 65),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft5();
                    }),
                title: AppbarTitle(
                    text: "lbl_notification".tr, margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, top: 12, bottom: 12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _widget(context, onTap: onTapOffer, name: 'lbl_offer'),
                      _widget(context, onTap: onTapFeed, name: 'lbl_feed'),
                      _widget(context, onTap: onTapActivity, name: 'lbl_acivity'),
                    ]))));
  }

  _widget(context, {required VoidCallback onTap, required String name}) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: double.maxFinite,
            padding: getPadding(context, all: 16),
            decoration: AppDecoration.fillWhiteA700,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  svgPath: ImageConstant.imgOffer24x24,
                  height: getSize(context, 24),
                  width: getSize(context, 24)),
              Padding(
                  padding: getPadding(context, left: 16, top: 2, bottom: 3),
                  child: Text(name.tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold12Indigo900(context)
                          .copyWith(
                              letterSpacing: getHorizontalSize(context, 0.5))))
            ])));
  }

  onTapOffer() {
    Get.toNamed(
      AppRoutes.notificationOfferScreen,
    );
  }

  onTapFeed() {
    Get.toNamed(
      AppRoutes.notificationFeedScreen,
    );
  }

  onTapActivity() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  onTapArrowleft5() {
    Get.back();
  }
}
