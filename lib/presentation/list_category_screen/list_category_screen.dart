import 'controller/list_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class ListCategoryScreen extends GetWidget<ListCategoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 52),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, bottom: 2),
                    onTap: () {
                      onTapArrowleft9();
                    }),
                title: AppbarTitle(
                    text: "lbl_category".tr, margin: getMargin(context, left: 12))),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(context, top: 25, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _widget(context, 'lbl_bikini'),
                              _widget(context, 'lbl_dress'),
                              _widget(context, 'lbl_work_equipment'),
                              _widget(context, 'lbl_man_pants'),
                              GestureDetector(
                                onTap: () {
                                  onTapManshoes();
                                },
                                child: _widget(context, 'lbl_man_shoes'),
                              ),
                              _widget(context, 'lbl_man_underwear'),
                              _widget(context, 'lbl_man_t_shirt'),
                              _widget(context, 'lbl_woman_bag'),
                              _widget(context, 'lbl_woman_pants'),
                              _widget(context, 'lbl_high_heels'),
                            ]))))));
  }

  _widget(context, String name) {
    return Container(
        width: double.maxFinite,
        padding: getPadding(context, all: 16),
        decoration: AppDecoration.fillWhiteA700,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              svgPath: ImageConstant.imgArrowleftLightBlueA200,
              height: getSize(context, 24),
              width: getSize(context, 24)),
          Padding(
              padding: getPadding(context, left: 16, top: 2, bottom: 3),
              child: Text(name.tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold12(context).copyWith(
                      letterSpacing: getHorizontalSize(context, 0.5))))
        ]));
  }

  onTapManshoes() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }

  onTapArrowleft9() {
    Get.back();
  }
}
