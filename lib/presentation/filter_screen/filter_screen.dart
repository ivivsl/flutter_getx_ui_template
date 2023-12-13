import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/buyingformate_item_model.dart';
import 'models/itemlocation_item_model.dart';
import 'models/showonly_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_text_form_field.dart';

class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 24),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(context, 23),
                    width: getHorizontalSize(context, 24),
                    svgPath: ImageConstant.imgClose23x24,
                    margin: getMargin(context, left: 18),
                    onTap: () {
                      onTapClose();
                    }),
                title: AppbarTitle(
                    text: "lbl_filter_search".tr, margin: getMargin(context, left: 12))),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(context, left: 16, top: 47, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_price_range".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900(context)
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(context, 0.5))),
                              Padding(
                                  padding: getPadding(context, top: 11),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller:
                                                    controller.priceController,
                                                hintText: "lbl_1_245".tr,
                                                margin: getMargin(context, right: 6),
                                                padding: TextFormFieldPadding
                                                    .PaddingT17_1,
                                                fontStyle: TextFormFieldFontStyle
                                                    .PoppinsBold12Bluegray300)),
                                        Expanded(
                                            child: CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .priceOneController,
                                                hintText: "lbl_9_344".tr,
                                                margin: getMargin(context, left: 6),
                                                padding: TextFormFieldPadding
                                                    .PaddingT17_1,
                                                fontStyle: TextFormFieldFontStyle
                                                    .PoppinsBold12Bluegray300,
                                                textInputAction:
                                                    TextInputAction.done))
                                      ])),
                              Padding(
                                  padding: getPadding(context, top: 34),
                                  child: Text("lbl_condition".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 13, right: 82),
                                  child: Row(children: [
                                    Container(
                                        width: getHorizontalSize(context, 59),
                                        padding: getPadding(context, 
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtOutlineBlue501(context)
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5(context)),
                                        child: Text("lbl_new".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular12(context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                          context,
                                                            0.5)))),
                                    Container(
                                        width: getHorizontalSize(context, 65),
                                        margin: getMargin(context, left: 9),
                                        padding: getPadding(context, 
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtFillLightblueA20019
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5(context)),
                                        child: Text("lbl_used".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold12(context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                          context,
                                                            0.5)))),
                                    Container(
                                        width: getHorizontalSize(context, 120),
                                        margin: getMargin(context, left: 8),
                                        padding: getPadding(context, 
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtFillLightblueA20019
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5(context)),
                                        child: Text("lbl_not_specified".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold12(context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                          context,
                                                            0.5))))
                                  ])),
                              Padding(
                                  padding: getPadding(context, top: 24),
                                  child: Text("lbl_buying_format".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 11),
                                  child: Obx(() => Wrap(
                                      runSpacing: getVerticalSize(context, 5),
                                      spacing: getHorizontalSize(context, 5),
                                      children: List<Widget>.generate(
                                          controller
                                              .filterModelObj
                                              .value
                                              .buyingformateItemList
                                              .value
                                              .length, (index) {
                                        BuyingformateItemModel model =
                                            controller
                                                .filterModelObj
                                                .value
                                                .buyingformateItemList
                                                .value[index];
                                        return BuyingformateItemWidget(model);
                                      })))),
                              Padding(
                                  padding: getPadding(context, top: 22),
                                  child: Text("lbl_item_location".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 13),
                                  child: Obx(() => Wrap(
                                      runSpacing: getVerticalSize(context, 5),
                                      spacing: getHorizontalSize(context, 5),
                                      children: List<Widget>.generate(
                                          controller
                                              .filterModelObj
                                              .value
                                              .itemlocationItemList
                                              .value
                                              .length, (index) {
                                        ItemlocationItemModel model = controller
                                            .filterModelObj
                                            .value
                                            .itemlocationItemList
                                            .value[index];
                                        return ItemlocationItemWidget(model);
                                      })))),
                              Padding(
                                  padding: getPadding(context, top: 25),
                                  child: Text("lbl_show_only".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 10),
                                  child: Obx(() => Wrap(
                                      runSpacing: getVerticalSize(context, 5),
                                      spacing: getHorizontalSize(context, 5),
                                      children: List<Widget>.generate(
                                          controller
                                              .filterModelObj
                                              .value
                                              .showonlyItemList
                                              .value
                                              .length, (index) {
                                        ShowonlyItemModel model = controller
                                            .filterModelObj
                                            .value
                                            .showonlyItemList
                                            .value[index];
                                        return ShowonlyItemWidget(model);
                                      }))))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_apply".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapApply();
                })));
  }

  onTapApply() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }

  onTapClose() {
    Get.back();
  }
}
