import 'package:meng_s_application1/widgets/app_bar/appbar_searchview.dart';

import '../explore_page/widgets/explore1_item_widget.dart';
import '../explore_page/widgets/explore_item_widget.dart';
import 'controller/explore_controller.dart';
import 'models/explore1_item_model.dart';
import 'models/explore_item_model.dart';
import 'models/explore_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ExploreController controller =
        Get.put(ExploreController(ExploreModel().obs));

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                width: size(context).width,
                height: getVerticalSize(context, 67),
                title: AppbarSearchview(
                    margin: getMargin(context, left: 16),
                    hintText: "lbl_search_product".tr,
                    controller: controller.searchController),
                actions: [
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgDownload,
                      margin: getMargin(context, left: 8, top: 0, right: 8),
                      onTap: () {
                        onTapDownload1();
                      }),
                  AppbarImage(
                      height: getSize(context, 24),
                      width: getSize(context, 24),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(context, left: 8, top: 0, right: 8),
                      onTap: () {
                        onTapNotification1();
                      }),
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context,
                    left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_man_fashion".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900(context)
                              .copyWith(
                                  letterSpacing:
                                      getHorizontalSize(context, 0.5))),
                      Padding(
                          padding: getPadding(context, top: 13),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent:
                                          getVerticalSize(context, 93),
                                      crossAxisCount: 4,
                                      mainAxisSpacing:
                                          getHorizontalSize(context, 21),
                                      crossAxisSpacing:
                                          getHorizontalSize(context, 21)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.exploreModelObj.value
                                  .exploreItemList.value.length,
                              itemBuilder: (context, index) {
                                ExploreItemModel model = controller
                                    .exploreModelObj
                                    .value
                                    .exploreItemList
                                    .value[index];
                                return ExploreItemWidget(model);
                              }))),
                      Padding(
                          padding: getPadding(context, top: 23),
                          child: Text("lbl_woman_fashion".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900(context)
                                  .copyWith(
                                      letterSpacing:
                                          getHorizontalSize(context, 0.5)))),
                      Padding(
                          padding: getPadding(context, top: 13),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                    height: getVerticalSize(context, 16));
                              },
                              itemCount: controller.exploreModelObj.value
                                  .explore1ItemList.value.length,
                              itemBuilder: (context, index) {
                                Explore1ItemModel model = controller
                                    .exploreModelObj
                                    .value
                                    .explore1ItemList
                                    .value[index];
                                return Explore1ItemWidget(model);
                              })))
                    ]))));
  }

  onTapDownload1() {
    Get.toNamed(
      AppRoutes.favoriteProductScreen,
    );
  }

  onTapNotification1() {
    Get.toNamed(
      AppRoutes.notificationOneScreen,
    );
  }
}
