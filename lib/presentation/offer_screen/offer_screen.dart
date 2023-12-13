import '../offer_screen/widgets/offer_screen_item_widget.dart';
import 'controller/offer_controller.dart';
import 'models/offer_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class OfferScreen extends GetWidget<OfferController> {
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
                      onTapArrowleft();
                    }),
                title: AppbarTitle(
                    text: "msg_super_flash_sal2".tr,
                    margin: getMargin(context, left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(context, left: 16, right: 16, bottom: 2),
                      onTap: () {
                        onTapSearch();
                      })
                ]),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(context, left: 16, top: 41, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _widget(context),
                              Padding(
                                  padding: getPadding(context, top: 16),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(context, 283),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(
                                                      context, 13),
                                              crossAxisSpacing:
                                                  getHorizontalSize(
                                                      context, 13)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.offerModelObj.value
                                          .offerScreenItemList.value.length,
                                      itemBuilder: (context, index) {
                                        OfferScreenItemModel model = controller
                                            .offerModelObj
                                            .value
                                            .offerScreenItemList
                                            .value[index];
                                        return OfferScreenItemWidget(model,
                                            onTapProduct: () {
                                          onTapProduct();
                                        });
                                      })))
                            ]))))));
  }

  Widget _widget(context) {
    _container(String name) {
      return Container(
          width: getHorizontalSize(context, 42),
          padding: getPadding(context, left: 9, top: 8, right: 9, bottom: 8),
          decoration: AppDecoration.txtFillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder5(context)),
          child: Text(name.tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold16(context)
                  .copyWith(letterSpacing: getHorizontalSize(context, 0.5))));
    }

    _padding() {
      return Padding(
          padding: getPadding(context, left: 4, top: 10, bottom: 9),
          child: Text('lbl'.tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold14WhiteA700(context)
                  .copyWith(letterSpacing: getHorizontalSize(context, 0.07))));
    }

    return Container(
        height: getVerticalSize(context, 206),
        width: getHorizontalSize(context, 343),
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPromotionimage206x343,
              height: getVerticalSize(context, 206),
              width: getHorizontalSize(context, 343),
              radius: BorderRadius.circular(getHorizontalSize(context, 5)),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: getPadding(context, left: 24),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: getHorizontalSize(context, 209),
                            child: Text("msg_super_flash_sal".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsBold24(context)
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(context, 0.5)))),
                        Padding(
                            padding: getPadding(context, top: 31),
                            child: Row(children: [
                              _container('lbl_08'),
                              _padding(),
                              _container('lbl_34'),
                              _padding(),
                              _container('lbl_52'),
                            ]))
                      ])))
        ]));
  }

  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapArrowleft() {
    Get.back();
  }

  onTapSearch() {
    Get.toNamed(
      AppRoutes.searchScreen,
    );
  }
}
