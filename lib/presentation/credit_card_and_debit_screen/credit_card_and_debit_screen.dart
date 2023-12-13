import '../credit_card_and_debit_screen/widgets/listvolume_item_widget.dart';
import 'controller/credit_card_and_debit_controller.dart';
import 'models/listvolume_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';

class CreditCardAndDebitScreen extends GetWidget<CreditCardAndDebitController> {
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
                    margin: getMargin(context, left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft21();
                    }),
                title: AppbarTitle(
                    text: "msg_credit_card_and".tr,
                    margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, top: 9, bottom: 9),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(context, left: 16, top: 8, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(context, 14));
                              },
                              itemCount: controller.creditCardAndDebitModelObj
                                  .value.listvolumeItemList.value.length,
                              itemBuilder: (context, index) {
                                ListvolumeItemModel model = controller
                                    .creditCardAndDebitModelObj
                                    .value
                                    .listvolumeItemList
                                    .value[index];
                                return ListvolumeItemWidget(model,
                                    onTapCreditcard: () {
                                  onTapCreditcard();
                                });
                              }))),
                      Spacer()
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_add_card".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 2),
                onTap: () {
                  onTapAddcard();
                })));
  }

  onTapCreditcard() {
    Get.toNamed(AppRoutes.lailyfaFebrinaCardScreen);
  }

  onTapAddcard() {
    Get.toNamed(
      AppRoutes.addCardScreen,
    );
  }

  onTapArrowleft21() {
    Get.back();
  }
}
