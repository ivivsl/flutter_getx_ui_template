import '../controller/product_detail_controller.dart';
import '../models/recomended_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class RecomendedItemWidget extends StatelessWidget {
  RecomendedItemWidget(this.recomendedItemModelObj);

  RecomendedItemModel recomendedItemModelObj;

  var controller = Get.find<ProductDetailController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(context, 
            right: 16,
          ),
          padding: getPadding(context, 
            all: 16,
          ),
          decoration: AppDecoration.outlineBlue501(context).copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5(context),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgProductimage109x1091,
                height: getSize(
                  context,
                  109,
                ),
                width: getSize(
                  context,
                  109,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    context,
                    5,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  context,
                  105,
                ),
                margin: getMargin(context, 
                  top: 7,
                ),
                child: Text(
                  "msg_fs_nike_air_m".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold12Indigo900(context).copyWith(
                    letterSpacing: getHorizontalSize(
                      context,
                      0.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(context, 
                  top: 11,
                ),
                child: Text(
                  "lbl_299_43".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold12(context).copyWith(
                    letterSpacing: getHorizontalSize(
                      context,
                      0.5,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(context, 
                  top: 9,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_534_33".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10(context).copyWith(
                        letterSpacing: getHorizontalSize(
                          context,
                          0.5,
                        ),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Padding(
                      padding: getPadding(context, 
                        left: 8,
                      ),
                      child: Text(
                        "lbl_24_off".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold10(context).copyWith(
                          letterSpacing: getHorizontalSize(
                            context,
                            0.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
