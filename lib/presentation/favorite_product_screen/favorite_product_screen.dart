import '../favorite_product_screen/widgets/gridnikeairmaxreact_item_widget.dart';
import 'controller/favorite_product_controller.dart';
import 'models/gridnikeairmaxreact_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class FavoriteProductScreen extends GetWidget<FavoriteProductController> {
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
                      onTapArrowleft1();
                    }),
                title: AppbarTitle(
                    text: "msg_favorite_produc".tr,
                    margin: getMargin(context, left: 12))),
            body: Padding(
                padding: getPadding(context, left: 16, top: 8, right: 16),
                child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(context, 283),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(context, 13),
                        crossAxisSpacing: getHorizontalSize(context, 13)),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.favoriteProductModelObj.value
                        .gridnikeairmaxreactItemList.value.length,
                    itemBuilder: (context, index) {
                      GridnikeairmaxreactItemModel model = controller
                          .favoriteProductModelObj
                          .value
                          .gridnikeairmaxreactItemList
                          .value[index];
                      return GridnikeairmaxreactItemWidget(model,
                          onTapProduct: () {
                        onTapProduct();
                      });
                    })))));
  }

  onTapProduct() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
