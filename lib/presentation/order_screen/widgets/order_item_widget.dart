import '../controller/order_controller.dart';
import '../models/order_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class OrderItemWidget extends StatelessWidget {
  OrderItemWidget(this.orderItemModelObj, {this.onTapOrder});

  OrderItemModel orderItemModelObj;

  var controller = Get.find<OrderController>();

  VoidCallback? onTapOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapOrder?.call();
        },
        child: Container(
          padding: getPadding(context,
            top: 5,
            bottom: 5,
          ),
          decoration: AppDecoration.outlineBlue501(context).copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5(context),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(context,
                    left: 16,
                  ),
                  child: Text(
                    "lbl_sdg1345kjd".tr,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(context,
                    left: 16,
                    top: 3,
                  ),
                  child: Text(
                    "msg_order_at_e_com".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular12Indigo90087(context).copyWith(
                      letterSpacing: getHorizontalSize(
                        context,
                        0.5,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(context,
                  top: 22,
                ),
                child: Divider(
                  height: getVerticalSize(
                    context,
                    1,
                  ),
                  thickness: getVerticalSize(
                    context,
                    1,
                  ),
                  color: ColorConstant.blue50,
                ),
              ),
              Padding(
                padding: getPadding(context,
                  left: 16,
                  top: 14,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(context,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_order_status".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12Indigo90087(context).copyWith(
                          letterSpacing: getHorizontalSize(
                            context,
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(context,
                        top: 1,
                      ),
                      child: Text(
                        "lbl_shipping".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12Indigo900(context).copyWith(
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
              Padding(
                padding: getPadding(context,
                  left: 16,
                  top: 9,
                  right: 17,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(context,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_items".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12Indigo90087(context).copyWith(
                          letterSpacing: getHorizontalSize(
                            context,
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(context,
                        top: 1,
                      ),
                      child: Text(
                        "msg_1_items_purchas".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12Indigo900(context).copyWith(
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
              Padding(
                padding: getPadding(context,
                  left: 16,
                  top: 9,
                  right: 17,
                  bottom: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_price".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12Indigo90087(context).copyWith(
                        letterSpacing: getHorizontalSize(
                          context,
                          0.5,
                        ),
                      ),
                    ),
                    Text(
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
