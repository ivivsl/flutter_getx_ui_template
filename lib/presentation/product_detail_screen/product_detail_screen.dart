import '../product_detail_screen/widgets/recomended_item_widget.dart';
import '../product_detail_screen/widgets/sizes_item_widget.dart';
import '../product_detail_screen/widgets/slider_item_widget.dart';
import 'controller/product_detail_controller.dart';
import 'models/recomended_item_model.dart';
import 'models/sizes_item_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreen extends GetWidget<ProductDetailController> {
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
                      onTapArrowleft2();
                    }),
                title: AppbarTitle(
                    text: "msg_nike_air_max_272".tr,
                    margin: getMargin(context, left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(context, left: 16),
                      onTap: () {
                        onTapSearch1();
                      }),
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin: getMargin(context, left: 16, right: 16))
                ]),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(context, top: 28, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Obx(() => CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: getVerticalSize(context, 238),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        controller.silderIndex.value = index;
                                      }),
                                  itemCount: controller.productDetailModelObj
                                      .value.sliderItemList.value.length,
                                  itemBuilder: (context, index, realIndex) {
                                    SliderItemModel model = controller
                                        .productDetailModelObj
                                        .value
                                        .sliderItemList
                                        .value[index];
                                    return SliderItemWidget(model);
                                  })),
                              Align(
                                  alignment: Alignment.center,
                                  child: Obx(() => Container(
                                      height: getVerticalSize(context, 8),
                                      margin: getMargin(context, top: 16),
                                      child: AnimatedSmoothIndicator(
                                          activeIndex:
                                              controller.silderIndex.value,
                                          count: controller
                                              .productDetailModelObj
                                              .value
                                              .sliderItemList
                                              .value
                                              .length,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                              spacing: 8,
                                              activeDotColor:
                                                  ColorConstant.lightBlueA200,
                                              dotColor: ColorConstant.blue50,
                                              dotHeight: getVerticalSize(context, 8),
                                              dotWidth:
                                                  getHorizontalSize(context,8)))))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(context, 
                                          left: 16, top: 15, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(context,275),
                                                child: Text(
                                                    "msg_nike_air_zoom_p".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold20(context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                  context,
                                                                    0.5)))),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgDownload,
                                                height: getSize(context,24),
                                                width: getSize(context,24),
                                                margin: getMargin(context, 
                                                    left: 44,
                                                    top: 2,
                                                    bottom: 32))
                                          ]))),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 9),
                                  child: RatingBar.builder(
                                      initialRating: 4,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemSize: getVerticalSize(context, 16),
                                      unratedColor: ColorConstant.blue50,
                                      itemCount: 5,
                                      updateOnDrag: true,
                                      onRatingUpdate: (rating) {},
                                      itemBuilder: (context, _) {
                                        return Icon(Icons.star,
                                            color: ColorConstant.yellow700);
                                      })),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 16),
                                  child: Text("lbl_299_43".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsBold20LightblueA200(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 22),
                                  child: Text("lbl_select_size".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(context, 61),
                                      child: Obx(() => ListView.separated(
                                          padding:
                                              getPadding(context, left: 16, top: 13),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(context, 16));
                                          },
                                          itemCount: controller
                                              .productDetailModelObj
                                              .value
                                              .sizesItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            SizesItemModel model = controller
                                                .productDetailModelObj
                                                .value
                                                .sizesItemList
                                                .value[index];
                                            return SizesItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 23),
                                  child: Text("lbl_select_color".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgColors,
                                  height: getVerticalSize(context, 48),
                                  width: getHorizontalSize(context, 359),
                                  margin: getMargin(context, left: 16, top: 12)),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 24),
                                  child: Text("lbl_specification".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(context, 
                                          left: 16, top: 12, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(context, bottom: 45),
                                                child: Text("lbl_shown".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Indigo900(context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                  context,
                                                                    0.5)))),
                                            Container(
                                                width: getHorizontalSize(context, 169),
                                                margin: getMargin(context, top: 1),
                                                child: Text(
                                                    "msg_laser_blue_anth".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.right,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12(context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                  context,
                                                                    0.5))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(context, 
                                          left: 16, top: 18, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(context, top: 1),
                                                child: Text("lbl_style".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12Indigo900(context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                  context,
                                                                    0.5)))),
                                            Padding(
                                                padding: getPadding(context, bottom: 1),
                                                child: Text("lbl_cd0113_400".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular12(context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                  context,
                                                                    0.5))))
                                          ]))),
                              Container(
                                  width: getHorizontalSize(context, 320),
                                  margin:
                                      getMargin(context, left: 16, top: 19, right: 38),
                                  child: Text("msg_the_nike_air_ma".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(context, 
                                          left: 16, top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_review_product".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14Indigo900(context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                              context,
                                                                0.5))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSeemorelink();
                                                },
                                                child: Text("lbl_see_more".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold14LightblueA200(context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                  context,
                                                                    0.5))))
                                          ]))),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 8),
                                  child: Row(children: [
                                    RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemSize: getVerticalSize(context, 16),
                                        unratedColor: ColorConstant.blue50,
                                        itemCount: 5,
                                        updateOnDrag: true,
                                        onRatingUpdate: (rating) {},
                                        itemBuilder: (context, _) {
                                          return Icon(Icons.star,
                                              color: ColorConstant.yellow700);
                                        }),
                                    Padding(
                                        padding: getPadding(context, left: 8, bottom: 1),
                                        child: Text("lbl_4_5".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold10Bluegray300(context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                          context,
                                                            0.5)))),
                                    Padding(
                                        padding: getPadding(context, left: 3, bottom: 1),
                                        child: Text("lbl_5_review".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular10(context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                          context,
                                                            0.5))))
                                  ])),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 16),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProfilepicture48x481,
                                        height: getSize(context,48),
                                        width: getSize(context,48),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(context,24))),
                                    Padding( 
                                        padding: getPadding(context, 
                                            left: 16, top: 2, bottom: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_james_lawson".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold14Indigo900(context)
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                context
                                                                ,
                                                                  0.5))),
                                              Padding(
                                                  padding: getPadding(context, top: 4),
                                                  child: RatingBar.builder(
                                                      initialRating: 4,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: false,
                                                      itemSize:
                                                          getVerticalSize(context,16),
                                                      unratedColor:
                                                          ColorConstant.blue50,
                                                      itemCount: 5,
                                                      updateOnDrag: true,
                                                      onRatingUpdate:
                                                          (rating) {},
                                                      itemBuilder:
                                                          (context, _) {
                                                        return Icon(Icons.star,
                                                            color: ColorConstant
                                                                .yellow700);
                                                      }))
                                            ]))
                                  ])),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(context,339),
                                      margin: getMargin(context, 
                                          left: 16, top: 18, right: 19),
                                      child: Text("msg_air_max_are_alw".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular12(context)
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                        context,
                                                          0.5))))),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 16),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProductpicture0272x72,
                                        height: getSize(context, 72),
                                        width: getSize(context, 72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(context, 8))),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProductpicture0372x72,
                                        height: getSize(context, 72),
                                        width: getSize(context,72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(context, 8)),
                                        margin: getMargin(context, left: 12)),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProductpicture0172x72,
                                        height: getSize(context, 72),
                                        width: getSize(context, 72),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(context, 5)),
                                        margin: getMargin(context, left: 12))
                                  ])),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 16),
                                  child: Text("msg_december_10_20".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, left: 16, top: 23),
                                  child: Text("msg_you_might_also".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.07)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(context, 249),
                                      child: Obx(() => ListView.separated(
                                          padding:
                                              getPadding(context, left: 16, top: 11),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(context, 16));
                                          },
                                          itemCount: controller
                                              .productDetailModelObj
                                              .value
                                              .recomendedItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            RecomendedItemModel model =
                                                controller
                                                    .productDetailModelObj
                                                    .value
                                                    .recomendedItemList
                                                    .value[index];
                                            return RecomendedItemWidget(model);
                                          }))))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_add_to_cart".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 50))));
  }

  onTapTxtSeemorelink() {
    Get.toNamed(
      AppRoutes.reviewProductScreen,
    );
  }

  onTapArrowleft2() {
    Get.back();
  }

  onTapSearch1() {
    Get.toNamed(
      AppRoutes.searchScreen,
    );
  }
}
