import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/flashsale_item_widget.dart';
import '../dashboard_page/widgets/megasale_item_widget.dart';
import '../dashboard_page/widgets/sliderofferbannertitl_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'models/flashsale_item_model.dart';
import 'models/megasale_item_model.dart';
import 'models/sliderofferbannertitl_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class DashboardPage extends StatelessWidget {
  DashboardController controller =
      Get.put(DashboardController(DashboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                width: size(context).width,
                height: getVerticalSize(context, 43),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(context, 16),
                    width: getSize(context, 16),
                    svgPath: ImageConstant.imgSearchLightBlueA200,
                    margin: getMargin(context, left: 32, top: 4, bottom: 4)),
                title: GestureDetector(
                    onTap: () {
                      onTapTxtSearchproduct();
                    },
                    child: Padding(
                        padding: getPadding(context, left: 8),
                        child: Text("lbl_search_product".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12(context)
                                .copyWith(
                                    letterSpacing:
                                        getHorizontalSize(context, 0.5))))),
                actions: [
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgDownload,
                      margin: getMargin(context, left: 16, right: 8),
                      onTap: () {
                        onTapDownload();
                      }),
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(context, right: 8),
                      onTap: () {
                        onTapNotification();
                      }),
                ]),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(context, left: 16, top: 43, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(context, right: 16),
                                  child: Obx(() => CarouselSlider.builder(
                                      options: CarouselOptions(
                                          height: getVerticalSize(context, 206),
                                          initialPage: 0,
                                          autoPlay: true,
                                          viewportFraction: 1.0,
                                          enableInfiniteScroll: false,
                                          scrollDirection: Axis.horizontal,
                                          onPageChanged: (index, reason) {
                                            controller.silderIndex.value =
                                                index;
                                          }),
                                      itemCount: controller
                                          .dashboardModelObj
                                          .value
                                          .sliderofferbannertitlItemList
                                          .value
                                          .length,
                                      itemBuilder: (context, index, realIndex) {
                                        SliderofferbannertitlItemModel model =
                                            controller
                                                .dashboardModelObj
                                                .value
                                                .sliderofferbannertitlItemList
                                                .value[index];
                                        return SliderofferbannertitlItemWidget(
                                            model);
                                      }))),
                              Obx(() => Container(
                                  height: getVerticalSize(context, 8),
                                  margin:
                                      getMargin(context, left: 135, top: 16),
                                  child: AnimatedSmoothIndicator(
                                      activeIndex: controller.silderIndex.value,
                                      count: controller
                                          .dashboardModelObj
                                          .value
                                          .sliderofferbannertitlItemList
                                          .value
                                          .length,
                                      axisDirection: Axis.horizontal,
                                      effect: ScrollingDotsEffect(
                                          spacing: 8,
                                          activeDotColor:
                                              ColorConstant.lightBlueA200,
                                          dotColor: ColorConstant.blue50,
                                          dotHeight:
                                              getVerticalSize(context, 8),
                                          dotWidth:
                                              getHorizontalSize(context, 8))))),
                              Padding(
                                  padding:
                                      getPadding(context, top: 25, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_category".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                    .txtPoppinsBold14Indigo900(
                                                        context)
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            context, 0.5))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtMorecategorylin();
                                            },
                                            child: Text("lbl_more_category".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsBold14LightblueA200(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(context, 118),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(context, top: 10),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(
                                                    context, 12));
                                          },
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .categoriesItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            CategoriesItemModel model =
                                                controller
                                                    .dashboardModelObj
                                                    .value
                                                    .categoriesItemList
                                                    .value[index];
                                            return CategoriesItemWidget(model);
                                          })))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowflashsale();
                                  },
                                  child: Padding(
                                      padding: getPadding(context,
                                          top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_flash_sale".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsBold14Indigo900(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5))),
                                            Text("lbl_see_more".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                        .txtPoppinsBold14LightblueA200(
                                                            context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                context, 0.5)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(context, 250),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(context, top: 12),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(
                                                    context, 16));
                                          },
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .flashsaleItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            FlashsaleItemModel model =
                                                controller
                                                    .dashboardModelObj
                                                    .value
                                                    .flashsaleItemList
                                                    .value[index];
                                            return FlashsaleItemWidget(model,
                                                onTapProduct: () {
                                              onTapProduct();
                                            });
                                          })))),
                              GestureDetector(
                                  onTap: () {
                                    onTapMegasaleheader();
                                  },
                                  child: Padding(
                                      padding: getPadding(context,
                                          top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(context, top: 1),
                                                child: Text("lbl_mega_sale".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                            .txtPoppinsBold14Indigo900(
                                                                context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    context,
                                                                    0.5)))),
                                            Padding(
                                                padding: getPadding(context,
                                                    bottom: 1),
                                                child: Text("lbl_see_more".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                            .txtPoppinsBold14LightblueA200(
                                                                context)
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    context,
                                                                    0.5))))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(context, 248),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(context, top: 10),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(
                                                    context, 16));
                                          },
                                          itemCount: controller
                                              .dashboardModelObj
                                              .value
                                              .megasaleItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            MegasaleItemModel model = controller
                                                .dashboardModelObj
                                                .value
                                                .megasaleItemList
                                                .value[index];
                                            return MegasaleItemWidget(model,
                                                onTapMegaSaleProduct: () {
                                              onTapMegaSaleProduct();
                                            });
                                          })))),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRecomendedproduct206x343,
                                  height: getVerticalSize(context, 206),
                                  width: getHorizontalSize(context, 343),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(context, 5)),
                                  margin: getMargin(context, top: 29)),
                              Padding(
                                  padding:
                                      getPadding(context, top: 16, right: 16),
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
                                      itemCount: controller.dashboardModelObj
                                          .value.dashboardItemList.value.length,
                                      itemBuilder: (context, index) {
                                        DashboardItemModel model = controller
                                            .dashboardModelObj
                                            .value
                                            .dashboardItemList
                                            .value[index];
                                        return DashboardItemWidget(model,
                                            onTapProducts: () {
                                          onTapProducts();
                                        });
                                      })))
                            ]))))));
  }

  onTapTxtMorecategorylin() {
    Get.toNamed(AppRoutes.listCategoryScreen);
  }

  onTapRowflashsale() {
    Get.toNamed(AppRoutes.offerScreen);
  }

  onTapMegasaleheader() {
    Get.toNamed(AppRoutes.offerScreen);
  }

  onTapTxtSearchproduct() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapDownload() {
    Get.toNamed(AppRoutes.favoriteProductScreen);
  }

  onTapNotification() {
    Get.toNamed(AppRoutes.notificationOneScreen);
  }

  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapProducts() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapMegaSaleProduct() {
    Get.toNamed(
      AppRoutes.productDetailScreen,
    );
  }
}
