import 'controller/search_result_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_icon_button.dart';

class SearchResultOneScreen extends GetWidget<SearchResultOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 67),
                title: Obx(() => AppbarSearchview(
                    margin: getMargin(context, left: 16),
                    hintText: "lbl_search_product".tr,
                    controller: controller.searchformController)),
                actions: [
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgSort,
                      margin: getMargin(context, left: 16, top: 16, right: 16)),
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context,24),
                      svgPath: ImageConstant.imgFilter,
                      margin: getMargin(context, left: 16, top: 16, right: 32))
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
                          color: ColorConstant.blue50),
                      Padding(
                          padding: getPadding(context, left: 16, top: 15, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(context, top: 1, bottom: 4),
                                    child: Text("lbl_0_result".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo90087(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5)))),
                                Spacer(),
                                Padding(
                                    padding: getPadding(context, top: 2, bottom: 3),
                                    child: Text("lbl_man_shoes".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900(context)
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(context, 0.5)))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getSize(context, 24),
                                    width: getSize(context, 24),
                                    margin: getMargin(context, left: 8))
                              ])),
                      Spacer(),
                      CustomIconButton(
                          height: 72,
                          width: 72,
                          variant: IconButtonVariant.OutlineLightblueA2003d,
                          padding: IconButtonPadding.PaddingAll28,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgClose72x72)),
                      Padding(
                          padding: getPadding(context, top: 15),
                          child: Text("msg_product_not_fou".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold24Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context,0.5)))),
                      Padding(
                          padding: getPadding(context, top: 11),
                          child: Text("msg_thank_you_for_s".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12(context).copyWith(
                                  letterSpacing: getHorizontalSize(context, 0.5)))),
                      CustomButton(
                          height: getVerticalSize(context, 57),
                          text: "lbl_back_to_home".tr,
                          margin: getMargin(context, 
                              left: 16, top: 16, right: 16, bottom: 281),
                          onTap: () {
                            onTapBacktohome();
                          })
                    ]))));
  }

  onTapBacktohome() {
    Get.toNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }
}
