import '../controller/offer_controller.dart';
import '../models/offer_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class OfferScreenItemWidget extends StatelessWidget {
  OfferScreenItemWidget(this.offerScreenItemModelObj, {this.onTapProduct});

  OfferScreenItemModel offerScreenItemModelObj;

  var controller = Get.find<OfferController>();

  VoidCallback? onTapProduct;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProduct?.call();
      },
      child: Container(
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
              imagePath: ImageConstant.imgProductimage109x1095,
              height: getSize(
                context,
                133,
              ),
              width: getSize(
                context,
                133,
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
                107,
              ),
              margin: getMargin(context,
                top: 8,
              ),
              child: Text(
                "msg_nike_air_max_27".tr,
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
                top: 5,
              ),
              child: RatingBar.builder(
                initialRating: 4,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemSize: getVerticalSize(
                  context,
                  12,
                ),
                unratedColor: ColorConstant.blue50,
                itemCount: 5,
                updateOnDrag: true,
                onRatingUpdate: (rating) {},
                itemBuilder: (context, _) {
                  return Icon(
                    Icons.star,
                    color: ColorConstant.yellow700,
                  );
                },
              ),
            ),
            Padding(
              padding: getPadding(context,
                top: 18,
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
                top: 5,
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
    );
  }
}
