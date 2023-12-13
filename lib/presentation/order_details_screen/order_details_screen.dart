import '../order_details_screen/widgets/order_details_item_widget.dart';
import 'controller/order_details_controller.dart';
import 'models/order_details_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_icon_button.dart';

class OrderDetailsScreen extends GetWidget<OrderDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 24),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16),
                    onTap: () {
                      onTapArrowleft17();
                    }),
                title: AppbarTitle(
                    text: "lbl_order_details".tr, margin: getMargin(context, left: 12))),
            body: _body(context),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_notify_me".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 50))));
  }

  _body(context) => SizedBox(
      width: size(context).width,
      child: SingleChildScrollView(
          child: Padding(
              padding: getPadding(context, left: 14, top: 43, right: 16, bottom: 5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        height: getVerticalSize(context, 57),
                        width: getHorizontalSize(context, 342),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: getPadding(context, top: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                            width:
                                                getHorizontalSize(context, 96),
                                            child: Divider(
                                                height:
                                                    getVerticalSize(context, 1),
                                                thickness:
                                                    getVerticalSize(context, 1),
                                                color: ColorConstant
                                                    .lightBlueA200)),
                                        SizedBox(
                                            width:
                                                getHorizontalSize(context, 96),
                                            child: Divider(
                                                height:
                                                    getVerticalSize(context, 1),
                                                thickness:
                                                    getVerticalSize(context, 1),
                                                color: ColorConstant
                                                    .lightBlueA200)),
                                        SizedBox(
                                            width:
                                                getHorizontalSize(context, 96),
                                            child: Divider(
                                                height:
                                                    getVerticalSize(context, 1),
                                                thickness:
                                                    getVerticalSize(context, 1),
                                                color: ColorConstant.blue50))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              variant: IconButtonVariant
                                                  .FillLightblueA200,
                                              shape: IconButtonShape
                                                  .CircleBorder12,
                                              padding:
                                                  IconButtonPadding.PaddingAll8,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVector41)),
                                          Padding(
                                              padding: getPadding(context, top: 10),
                                              child: Text("lbl_packing".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                          .txtPoppinsRegular12(
                                                              context)
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  context,
                                                                  0.5))))
                                        ]),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              variant: IconButtonVariant
                                                  .FillLightblueA200,
                                              shape: IconButtonShape
                                                  .CircleBorder12,
                                              padding:
                                                  IconButtonPadding.PaddingAll8,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVector41)),
                                          Padding(
                                              padding: getPadding(context, top: 10),
                                              child: Text("lbl_shipping".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                          .txtPoppinsRegular12(
                                                              context)
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  context,
                                                                  0.5))))
                                        ]),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 24,
                                              width: 24,
                                              variant: IconButtonVariant
                                                  .FillLightblueA200,
                                              shape: IconButtonShape
                                                  .CircleBorder12,
                                              padding:
                                                  IconButtonPadding.PaddingAll8,
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgVector41)),
                                          Padding(
                                              padding: getPadding(context, top: 10),
                                              child: Text("lbl_arriving".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                          .txtPoppinsRegular12(
                                                              context)
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  context,
                                                                  0.5))))
                                        ]),
                                    Padding(
                                        padding: getPadding(context, bottom: 1),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmark24x24,
                                                  height: getSize(context, 24),
                                                  width: getSize(context, 24),
                                                  margin: getMargin(context, left: 13)),
                                              Padding(
                                                  padding: getPadding(context, top: 13),
                                                  child: Text("lbl_success".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                              .txtPoppinsRegular12(
                                                                  context)
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      context,
                                                                      0.5))))
                                            ]))
                                  ]))
                        ])),
                    Padding(
                        padding: getPadding(context, left: 2, top: 24),
                        child: Text("lbl_product".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold14Indigo900(context)
                                .copyWith(
                                    letterSpacing:
                                        getHorizontalSize(context, 0.5)))),
                    Padding(
                        padding: getPadding(context, left: 2, top: 12),
                        child: Obx(() => ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                  height: getVerticalSize(context, 8));
                            },
                            itemCount: controller.orderDetailsModelObj.value
                                .orderDetailsItemList.value.length,
                            itemBuilder: (context, index) {
                              OrderDetailsItemModel model = controller
                                  .orderDetailsModelObj
                                  .value
                                  .orderDetailsItemList
                                  .value[index];
                              return OrderDetailsItemWidget(model);
                            }))),
                    Padding(
                        padding: getPadding(context, left: 2, top: 24),
                        child: Text("msg_shipping_detail".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold14Indigo900(context)
                                .copyWith(
                                    letterSpacing:
                                        getHorizontalSize(context, 0.5)))),
                    Container(
                        width: double.maxFinite,
                        child: Container(
                            margin: getMargin(context, left: 2, top: 11),
                            padding: getPadding(context, 
                                left: 16, top: 19, right: 16, bottom: 19),
                            decoration: AppDecoration.outlineBlue501(context)
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5(
                                            context)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_date_shipping".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                    .txtPoppinsRegular12Indigo90087(
                                                        context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            context, 0.5))),
                                        Text("msg_january_16_202".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                    .txtPoppinsRegular12Indigo900(
                                                        context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            context, 0.5)))
                                      ]),
                                  Padding(
                                      padding: getPadding(context, top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_shipping".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsRegular12Indigo90087(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5))),
                                            Text("lbl_pos_reggular".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsRegular12Indigo900(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5)))
                                          ])),
                                  Padding(
                                      padding: getPadding(context, top: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_no_resi".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsRegular12Indigo90087(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, .5))),
                                            Text("lbl_000192848573".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsRegular12Indigo900(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5)))
                                          ])),
                                  Padding(
                                      padding: getPadding(context, top: 15),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(context, bottom: 22),
                                                child: Text("lbl_address".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                            .txtPoppinsRegular12Indigo90087(
                                                                context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    context,
                                                                    0.5)))),
                                            Container(
                                                width: getHorizontalSize(
                                                    context, 160),
                                                margin: getMargin(context, top: 1),
                                                child: Text(
                                                    "msg_2727_new_owerr".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.right,
                                                    style: AppStyle
                                                            .txtPoppinsRegular12Indigo900(
                                                                context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    context,
                                                                    0.5))))
                                          ]))
                                ]))),
                    Padding(
                        padding: getPadding(context, left: 2, top: 46),
                        child: Text("lbl_payment_details".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold14Indigo900(context)
                                .copyWith(
                                    letterSpacing:
                                        getHorizontalSize(context, 0.5)))),
                    Container(
                        width: double.maxFinite,
                        child: Container(
                            margin: getMargin(context, left: 1, top: 11),
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
                                  Padding(
                                      padding: getPadding(context, top: 1),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_items_3".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsRegular12(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5))),
                                            Text("lbl_598_86".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsRegular12Indigo900(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5)))
                                          ])),
                                  Padding(
                                      padding: getPadding(context, top: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(context, top: 1),
                                                child: Text("lbl_shipping".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                            .txtPoppinsRegular12(
                                                                context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    context,
                                                                    0.5)))),
                                            Padding(
                                                padding: getPadding(context, bottom: 1),
                                                child: Text("lbl_40_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                            .txtPoppinsRegular12Indigo900(
                                                                context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    context,
                                                                    0.5))))
                                          ])),
                                  Padding(
                                      padding: getPadding(context, top: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(context, top: 1),
                                                child: Text(
                                                    "lbl_import_charges".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                            .txtPoppinsRegular12(
                                                                context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    context,
                                                                    0.5)))),
                                            Padding(
                                                padding: getPadding(context, bottom: 1),
                                                child: Text("lbl_128_00".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                            .txtPoppinsRegular12Indigo900(
                                                                context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    context,
                                                                    0.5))))
                                          ])),
                                  Padding(
                                      padding: getPadding(context, top: 12),
                                      child: Divider(
                                          height: getVerticalSize(context, 1),
                                          thickness:
                                              getVerticalSize(context, 1),
                                          color: ColorConstant.blue50)),
                                  Padding(
                                      padding: getPadding(context, top: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_total_price".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsBold12Indigo900(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5))),
                                            Text("lbl_766_86".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsBold12(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5)))
                                          ]))
                                ])))
                  ]))));

  onTapArrowleft17() {
    Get.back();
  }
}
