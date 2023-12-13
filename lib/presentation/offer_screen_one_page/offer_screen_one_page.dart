import 'controller/offer_screen_one_controller.dart';
import 'models/offer_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class OfferScreenOnePage extends StatelessWidget {
  OfferScreenOneController controller =
      Get.put(OfferScreenOneController(OfferScreenOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 65),
                title: AppbarTitle(
                    text: "lbl_offer".tr, margin: getMargin(context, left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(context, left: 13, top: 16, right: 13, bottom: 15),
                      onTap: () {
                        onTapNotification3();
                      })
                ]),
            body: _body(context)));
  }

  Widget _body(context) {
    _padding() => Padding(
        padding: getPadding(context, top: 31),
        child: Row(children: [
          Container(
              width: getHorizontalSize(context, 42),
              padding: getPadding(context, left: 9, top: 8, right: 9, bottom: 8),
              decoration: AppDecoration.txtFillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder5(context)),
              child: Text("lbl_08".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold16(context).copyWith(
                      letterSpacing: getHorizontalSize(context, 0.5)))),
          Padding(
              padding: getPadding(context, left: 4, top: 10, bottom: 9),
              child: Text("lbl".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold14WhiteA700(context).copyWith(
                      letterSpacing: getHorizontalSize(context, 0.07)))),
          Container(
              width: getHorizontalSize(context, 42),
              margin: getMargin(context, left: 4),
              padding: getPadding(context, left: 9, top: 8, right: 9, bottom: 8),
              decoration: AppDecoration.txtFillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder5(context)),
              child: Text("lbl_34".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold16(context).copyWith(
                      letterSpacing: getHorizontalSize(context, 0.5)))),
          Padding(
              padding: getPadding(context, left: 4, top: 10, bottom: 9),
              child: Text("lbl".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold14WhiteA700(context).copyWith(
                      letterSpacing: getHorizontalSize(context, 0.07)))),
          Container(
              width: getHorizontalSize(context, 42),
              margin: getMargin(context, left: 4),
              padding: getPadding(context, left: 10, top: 8, right: 10, bottom: 8),
              decoration: AppDecoration.txtFillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.txtRoundedBorder5(context)),
              child: Text("lbl_52".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold16(context).copyWith(
                      letterSpacing: getHorizontalSize(context, 0.5))))
        ]));
    _container() => Container(
        height: getVerticalSize(context, 206),
        width: getHorizontalSize(context, 343),
        margin: getMargin(context, top: 16, bottom: 5),
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRecomendedproduct206x343,
              height: getVerticalSize(context, 206),
              width: getHorizontalSize(context, 343),
              radius: BorderRadius.circular(getHorizontalSize(context, 5)),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: getPadding(context, left: 24, top: 31),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(context, 252),
                            child: Text("msg_90_off_super_m".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsBold24(context)
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(context, 0.5)))),
                        Padding(
                            padding: getPadding(context, top: 21),
                            child: Text("msg_special_birthda".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12WhiteA700(
                                        context)
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(context, 0.5))))
                      ])))
        ]));
    return Container(
        width: double.maxFinite,
        padding: getPadding(context, left: 16, top: 28, right: 16, bottom: 28),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              width: double.maxFinite,
              child: Container(
                  width: getHorizontalSize(context, 343),
                  padding: getPadding(context, left: 16, top: 17, right: 16, bottom: 17),
                  decoration: AppDecoration.fillLightblueA200.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5(context)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(context, 201),
                            child: Text("msg_use_megsl_cup".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtPoppinsBold16WhiteA700(context)
                                        .copyWith(
                                            letterSpacing: getHorizontalSize(
                                                context, 0.5))))
                      ]))),
          Container(
              height: getVerticalSize(context, 206),
              width: getHorizontalSize(context, 343),
              margin: getMargin(context, top: 16),
              child: Stack(alignment: Alignment.centerLeft, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgPromotionimage206x343,
                    height: getVerticalSize(context, 206),
                    width: getHorizontalSize(context, 343),
                    radius:
                        BorderRadius.circular(getHorizontalSize(context, 5)),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: getPadding(context, left: 24),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: getHorizontalSize(context, 209),
                                  child: Text("msg_super_flash_sal".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold24(context)
                                          .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                  context, 0.5)))),
                              _padding()
                            ])))
              ])),
          _container()
        ])); 
  }

  onTapNotification3() {
    Get.toNamed(
      AppRoutes.notificationOneScreen,
    );
  }
}
