import '../ship_to_screen/widgets/ship_to_item_widget.dart';
import 'controller/ship_to_controller.dart';
import 'models/ship_to_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';

class ShipToScreen extends GetWidget<ShipToController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(context, 28),
                    width: getHorizontalSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft11();
                    }),
                title: AppbarTitle(
                    text: "lbl_ship_to".tr, margin: getMargin(context, left: 12)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(context, 28),
                      width: getHorizontalSize(context, 24),
                      svgPath: ImageConstant.imgPlus28x24,
                      margin:
                          getMargin(context, left: 16, top: 13, right: 16, bottom: 14),
                      onTap: () {
                        onTapPlus();
                      })
                ]),
            body: Padding(
                padding: getPadding(context, left: 16, top: 4, right: 16),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(context, 22));
                    },
                    itemCount: controller
                        .shipToModelObj.value.shipToItemList.value.length,
                    itemBuilder: (context, index) {
                      ShipToItemModel model = controller
                          .shipToModelObj.value.shipToItemList.value[index];
                      return ShipToItemWidget(model);
                    }))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_next".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapNext();
                })));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  onTapArrowleft11() {
    Get.back();
  }

  onTapPlus() {
    Get.toNamed(
      AppRoutes.addressScreen,
    );
  }
}
