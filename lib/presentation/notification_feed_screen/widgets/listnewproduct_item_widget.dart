import '../controller/notification_feed_controller.dart';
import '../models/listnewproduct_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListnewproductItemWidget extends StatelessWidget {
  ListnewproductItemWidget(this.listnewproductItemModelObj,
      {this.onTapFeeditem});

  ListnewproductItemModel listnewproductItemModelObj;

  var controller = Get.find<NotificationFeedController>();

  VoidCallback? onTapFeeditem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFeeditem?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: getPadding(context, 
          all: 16,
        ),
        decoration: AppDecoration.fillWhiteA700,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgProductimage109x1091,
              height: getSize(
                context,
                48,
              ),
              width: getSize(
                context,
                48,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  context,
                  5,
                ),
              ),
              margin: getMargin(context, 
                bottom: 40,
              ),
            ),
            Expanded(
              child: Padding(
                padding: getPadding(context, 
                  left: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_new_product".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Indigo900(context).copyWith(
                        letterSpacing: getHorizontalSize(
                          context,
                          0.5,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        context,
                        269,
                      ),
                      margin: getMargin(context, 
                        top: 6,
                      ),
                      child: Text(
                        "msg_nike_air_zoom_p2".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular12(context).copyWith(
                          letterSpacing: getHorizontalSize(
                            context,
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(context, 
                        top: 4,
                      ),
                      child: Text(
                        "msg_june_3_2015_5".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular10Indigo900(context).copyWith(
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
            ),
          ],
        ),
      ),
    );
  }
}
