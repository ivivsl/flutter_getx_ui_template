import '../address_screen/widgets/address_item_widget.dart';
import 'controller/address_controller.dart';
import 'models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';

class AddressScreen extends GetWidget<AddressController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft19();
                    }),
                title: AppbarTitle(
                    text: "lbl_address".tr, margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, top: 10, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(context, left: 16, top: 10, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(context, 18));
                              },
                              itemCount: controller.addressModelObj.value
                                  .addressItemList.value.length,
                              itemBuilder: (context, index) {
                                AddressItemModel model = controller
                                    .addressModelObj
                                    .value
                                    .addressItemList
                                    .value[index];
                                return AddressItemWidget(model);
                              }))),
                      Spacer()
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_add_address".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 3),
                onTap: () {
                  onTapAddaddress();
                })));
  }

  onTapAddaddress() {
    Get.toNamed(
      AppRoutes.addAddressScreen,
    );
  }

  onTapArrowleft19() {
    Get.back();
  }
}
