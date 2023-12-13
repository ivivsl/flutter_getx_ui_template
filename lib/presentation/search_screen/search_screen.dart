import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_search_view.dart';

import 'controller/search_controller.dart';

class SearchScreen extends GetWidget<SearchingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 67),
                title: CustomSearchView(
                    width: getHorizontalSize(context, 291),
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "lbl_nike_air_max".tr,
                    margin: getMargin(context, left: 16),
                    variant: SearchViewVariant.OutlineLightblueA200,
                    padding: SearchViewPadding.PaddingT12,
                    fontStyle: SearchViewFontStyle.PoppinsBold12Indigo90087,
                    prefix: Container(
                        margin:
                            getMargin(context, left: 16, top: 12, right: 8, bottom: 16),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgSearchLightBlueA200)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(context, 44)),
                    suffix: Container(
                        margin:
                            getMargin(context, left: 30, top: 12, right: 16, bottom: 12),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgClose20x20)),
                    suffixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(context, 44))),
                actions: [
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgUpload24x24,
                      margin: getMargin(context, all: 16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, top: 11, bottom: 11),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(context, 1),
                          thickness: getVerticalSize(context, 1),
                          color: ColorConstant.blue50,
                          indent: getHorizontalSize(context, 6)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtLanguage();
                              },
                              child: Container(
                                  width: double.maxFinite,
                                  margin: getMargin(context, top: 9),
                                  padding: getPadding(context, 
                                      left: 16, top: 17, right: 16, bottom: 17),
                                  decoration: AppDecoration.txtFillWhiteA700,
                                  child: Text("msg_nike_air_max_273".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSearchresult();
                              },
                              child: Container(
                                  width: double.maxFinite,
                                  padding: getPadding(context, 
                                      left: 16, top: 17, right: 16, bottom: 17),
                                  decoration: AppDecoration.txtFillWhiteA700,
                                  child: Text("msg_nike_air_vaporm".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(context, 
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_max_273".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12(context).copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(context, 
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_max_274".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12(context).copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              padding: getPadding(context, 
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_vaporm2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12(context).copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(context, bottom: 5),
                              padding: getPadding(context, 
                                  left: 16, top: 17, right: 16, bottom: 17),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("msg_nike_air_max_97".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12(context).copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))))
                    ]))));
  }

  onTapTxtLanguage() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }

  onTapTxtSearchresult() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
