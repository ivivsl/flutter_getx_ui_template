import '../controller/product_detail_controller.dart';
import '../models/sizes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SizesItemWidget extends StatelessWidget {
  SizesItemWidget(this.sizesItemModelObj);

  SizesItemModel sizesItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getSize(
            context,
            48,
          ),
          margin: getMargin(context,
            right: 16,
          ),
          padding: getPadding(context,
            left: 19,
            top: 13,
            right: 19,
            bottom: 13,
          ),
          decoration: AppDecoration.txtOutlineBlue50(context).copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder24(context),
          ),
          child: Obx(
            () => Text(
              sizesItemModelObj.fiveTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold14Indigo900(context).copyWith(
                letterSpacing: getHorizontalSize(
                  context,
                  0.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
