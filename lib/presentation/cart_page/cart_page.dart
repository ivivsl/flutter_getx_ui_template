import '../cart_page/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CartPage extends StatelessWidget {
  CartController controller = Get.put(CartController(CartModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 66),
                title: AppbarTitle(
                    text: "lbl_your_cart".tr, margin: getMargin(context, left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(context, left: 13, top: 15, right: 13, bottom: 16),
                      onTap: () {
                        onTapNotification2();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, left: 15, top: 7, right: 15, bottom: 7),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(context, left: 1, right: 1),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                    height: getVerticalSize(context, 16));
                              },
                              itemCount: controller
                                  .cartModelObj.value.cartItemList.value.length,
                              itemBuilder: (context, index) {
                                CartItemModel model = controller.cartModelObj
                                    .value.cartItemList.value[index];
                                return CartItemWidget(model,
                                    onTapProductdetails: () {
                                  onTapProductdetails();
                                });
                              }))),
                      Padding(
                          padding: getPadding(context, top: 52),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.coponcodefieldController,
                                        hintText: "msg_enter_cupon_cod".tr,
                                        padding:
                                            TextFormFieldPadding.PaddingT19,
                                        textInputAction: TextInputAction.done)),
                                CustomButton(
                                    height: getVerticalSize(context, 56),
                                    width: getHorizontalSize(context, 87),
                                    text: "lbl_apply".tr,
                                    variant: ButtonVariant.FillLightblueA200,
                                    shape: ButtonShape.CustomBorderLR5,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsBold12WhiteA700)
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(context, top: 16, right: 2),
                              padding: getPadding(context, all: 16),
                              decoration: AppDecoration.outlineBlue501(context)
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5(
                                              context)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _widgetBody(context,
                                        padding: 1,
                                        text1: 'lbl_items_3',
                                        text2: 'lbl_598_86'),
                                    _widgetBody(context,
                                        padding: 16,
                                        text1: 'lbl_shipping',
                                        text2: 'lbl_40_00'),
                                    _widgetBody(context,
                                        padding: 14,
                                        text1: 'lbl_import_charges',
                                        text2: 'lbl_128_00'),
                                    Padding(
                                        padding: getPadding(context, top: 12),
                                        child: Divider(
                                            height: getVerticalSize(context, 1),
                                            thickness:
                                                getVerticalSize(context, 1),
                                            color: ColorConstant.blue50)),
                                    _widgetBody(context,
                                        padding: 10,
                                        text1: 'lbl_total_price',
                                        text2: 'lbl_766_86'),
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(context, 57),
                          text: "lbl_check_out".tr,
                          margin: getMargin(context, top: 16, bottom: 8),
                          onTap: () {
                            onTapCheckout();
                          })
                    ]))));
  }

  Padding _widgetBody(BuildContext context,
          {required double padding,
          required String text1,
          required String text2}) =>
      Padding(
          padding: getPadding(context, top: padding),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(text1.tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold12Indigo900(context)
                    .copyWith(letterSpacing: getHorizontalSize(context, 0.5))),
            Text(text2.tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsBold12(context)
                    .copyWith(letterSpacing: getHorizontalSize(context, 0.5)))
          ]));

  onTapProductdetails() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapCheckout() {
    Get.toNamed(
      AppRoutes.shipToScreen,
    );
  }

  onTapNotification2() {
    Get.toNamed(
      AppRoutes.notificationOneScreen,
    );
  }
}
