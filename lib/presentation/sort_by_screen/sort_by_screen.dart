import 'controller/sort_by_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class SortByScreen extends GetWidget<SortByController> {
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
                      onTapArrowleft10();
                    }),
                title: AppbarTitle(
                    text: "lbl_sort_by".tr,
                    margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, top: 10, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _widgetBody(context, 'lbl_best_match'),
                      GestureDetector(
                        onTap: onTapTxtTimeendingsooneOne,
                        child: _widgetBody(context, 'msg_time_ending_so'),
                      ),
                      _widgetBody(context, 'msg_time_newly_lis'),
                      _widgetBody(context, 'msg_price_shippin'),
                      _widgetBody(context, 'msg_price_shippin2'),
                      _widgetBody(context, 'msg_price_shippin2'),
                      _widgetBody(context, 'msg_distance_neare'),
                    ]))));
  }

  _widgetBody(BuildContext context, String text) => Align(
      alignment: Alignment.centerLeft,
      child: Container(
          width: double.maxFinite,
          padding: getPadding(context, left: 16, top: 17, right: 16, bottom: 17),
          decoration: AppDecoration.txtFillWhiteA700,
          child: Text(text.tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold12(context)
                  .copyWith(letterSpacing: getHorizontalSize(context, 0.5)))));

  onTapTxtTimeendingsooneOne() {
    Get.toNamed(
      AppRoutes.offerScreen,
    );
  }

  onTapArrowleft10() {
    Get.back();
  }
}
