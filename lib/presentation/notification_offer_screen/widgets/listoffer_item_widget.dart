import '../controller/notification_offer_controller.dart';
import '../models/listoffer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListofferItemWidget extends StatelessWidget {
  ListofferItemWidget(this.listofferItemModelObj);

  ListofferItemModel listofferItemModelObj;

  var controller = Get.find<NotificationOfferController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(context,
        top: 16,
        bottom: 16,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgOffer24x24,
            height: getSize(
              context,
              24,
            ),
            width: getSize(
              context,
              24,
            ),
            margin: getMargin(context,
              left: 16,
              top: 16,
              bottom: 110,
            ),
          ),
          Padding(
            padding: getPadding(context,
              left: 12,
              top: 16,
              right: 17,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listofferItemModelObj.thebesttitleTxt.value,
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
                Container(
                  width: getHorizontalSize(
                    context,
                    305,
                  ),
                  margin: getMargin(context,
                    top: 11,
                  ),
                  child: Text(
                    "msg_culpa_cillum_co".tr,
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
                    top: 9,
                  ),
                  child: Text(
                    "msg_april_30_2014".tr,
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
        ],
      ),
    );
  }
}
