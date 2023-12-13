import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj, {this.onTapProductdetails});

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

  VoidCallback? onTapProductdetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductdetails?.call();
      },
      child: Container(
        padding: getPadding(
          context,
          top: 15,
          bottom: 15,
        ),
        decoration: AppDecoration.outlineBlue501(context).copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5(context),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImageproduct133x133,
              height: getSize(
                context,
                72,
              ),
              width: getSize(
                context,
                72,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  context,
                  5,
                ),
              ),
              margin: getMargin(
                context,
                top: 1,
                bottom: 1,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        context,
                        150,
                      ),
                      child: Text(
                        "msg_nike_air_zoom_p".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold12Indigo900(context)
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            context,
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgLoveicon,
                      height: getSize(
                        context,
                        24,
                      ),
                      width: getSize(
                        context,
                        24,
                      ),
                      margin: getMargin(
                        context,
                        left: 20,
                        bottom: 10,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgTrash24x24,
                      height: getSize(
                        context,
                        24,
                      ),
                      width: getSize(
                        context,
                        24,
                      ),
                      margin: getMargin(
                        context,
                        left: 8,
                        bottom: 10,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    context,
                    top: 17,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          context,
                          top: 1,
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
                      CustomImageView(
                        svgPath: ImageConstant.imgFolder,
                        height: getVerticalSize(
                          context,
                          20,
                        ),
                        width: getHorizontalSize(
                          context,
                          33,
                        ),
                        margin: getMargin(
                          context,
                          left: 67,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          context,
                          20,
                        ),
                        width: getHorizontalSize(
                          context,
                          41,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  context,
                                  20,
                                ),
                                width: getHorizontalSize(
                                  context,
                                  41,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blue50,
                                  border: Border.all(
                                    color: ColorConstant.blue50,
                                    width: getHorizontalSize(
                                      context,
                                      1,
                                    ),
                                    strokeAlign: strokeAlignCenter,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: getPadding(
                                  context,
                                  right: 17,
                                ),
                                child: Text(
                                  "lbl_1".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsRegular12Indigo90087(
                                              context)
                                          .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      context,
                                      0.06,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgPlus,
                        height: getVerticalSize(
                          context,
                          20,
                        ),
                        width: getHorizontalSize(
                          context,
                          33,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
