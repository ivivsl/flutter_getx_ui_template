import '../controller/product_detail_controller.dart';
import '../models/slider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(this.sliderItemModelObj);

  SliderItemModel sliderItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductimage1,
      height: getVerticalSize(
        context,
        238,
      ),
      width: getHorizontalSize(
        context,
        375,
      ),
    );
  }
}
