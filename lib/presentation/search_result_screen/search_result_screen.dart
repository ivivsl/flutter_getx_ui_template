import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_search_view.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 60),
                title: CustomSearchView(
                    width: getHorizontalSize(context, 263),
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "lbl_nike_air_max".tr,
                    margin: getMargin(context, left: 16),
                    fontStyle: SearchViewFontStyle.PoppinsBold12Indigo90087,
                    prefix: Container(
                        margin:
                            getMargin(context, left: 16, top: 12, right: 8, bottom: 14),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgSearchLightBlueA200)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(context, 42)),
                    suffix: Padding(
                        padding: EdgeInsets.only(right: getHorizontalSize(context, 15)),
                        child: IconButton(
                            onPressed: () {
                              controller.searchController.clear();
                            },
                            icon: Icon(Icons.clear,
                                color: Colors.grey.shade600)))),
                actions: [
                  AppbarImage(
                      height: getSize(context,24),
                      width: getSize(context,24),
                      svgPath: ImageConstant.imgSort,
                      margin: getMargin(context, left: 16, top: 9, right: 9),
                      onTap: () {
                        onTapSort();
                      }),
                  AppbarImage(
                      height: getSize(context,24),
                      width: getSize(context,24),
                      svgPath: ImageConstant.imgFilter,
                      margin: getMargin(context, left: 16, top: 9, right: 25),
                      onTap: () {
                        onTapFilter();
                      })
                ]),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(context, top: 18, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Divider(
                                  height: getVerticalSize(context, 1),
                                  thickness: getVerticalSize(context, 1),
                                  color: ColorConstant.blue50),
                              Padding(
                                  padding:
                                      getPadding(context, left: 16, top: 15, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(context, top: 1, bottom: 4),
                                            child: Text("lbl_145_result".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo90087(context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                              context,
                                                                0.5)))),
                                        Spacer(),
                                        Padding(
                                            padding:
                                                getPadding(context, top: 2, bottom: 3),
                                            child: Text("lbl_man_shoes".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo900(context)
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                              context,
                                                                0.5)))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowdown,
                                            height: getSize(context, 24),
                                            width: getSize(context, 24),
                                            margin: getMargin(context, left: 8))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(context, left: 16, top: 16, right: 16),
                                  child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              mainAxisExtent:
                                                  getVerticalSize(context, 283),
                                              crossAxisCount: 2,
                                              mainAxisSpacing:
                                                  getHorizontalSize(context, 13),
                                              crossAxisSpacing:
                                                  getHorizontalSize(context, 13)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller
                                          .searchResultModelObj
                                          .value
                                          .searchResultItemList
                                          .value
                                          .length,
                                      itemBuilder: (context, index) {
                                        SearchResultItemModel model = controller
                                            .searchResultModelObj
                                            .value
                                            .searchResultItemList
                                            .value[index];
                                        return SearchResultItemWidget(model,
                                            onTapProduct: () {
                                          onTapProduct();
                                        });
                                      })))
                            ]))))));
  }

  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapSort() {
    Get.toNamed(
      AppRoutes.sortByScreen,
    );
  }

  onTapFilter() {
    Get.toNamed(
      AppRoutes.filterScreen,
    );
  }
}
