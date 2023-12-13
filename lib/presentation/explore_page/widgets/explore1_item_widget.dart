import '../controller/explore_controller.dart';
import '../models/explore1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Explore1ItemWidget extends StatelessWidget {
  Explore1ItemWidget(this.explore1ItemModelObj);

  Explore1ItemModel explore1ItemModelObj;

  var controller = Get.find<ExploreController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: getPadding(context, 
              right: 10,
              bottom: 14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClock,
                  ),
                ),
                Padding(
                  padding: getPadding(context, 
                    top: 8,
                  ),
                  child: Obx(
                    () => Text(
                      explore1ItemModelObj.dressTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10(context).copyWith(
                        letterSpacing: getHorizontalSize(
                          context,
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(context, 
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgTicket70x70,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    context,
                    41,
                  ),
                  margin: getMargin(context, 
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      explore1ItemModelObj.womantshirtTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular10(context).copyWith(
                        letterSpacing: getHorizontalSize(
                          context,
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(context, 
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgWomanpantsicon,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    context,
                    41,
                  ),
                  margin: getMargin(context, 
                    top: 9,
                  ),
                  child: Obx(
                    () => Text(
                      explore1ItemModelObj.womanpantsTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPoppinsRegular10(context).copyWith(
                        letterSpacing: getHorizontalSize(
                          context,
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(context,
              left: 10,
              bottom: 14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgTrash1,
                  ),
                ),
                Padding(
                  padding: getPadding(context,
                    top: 7,
                  ),
                  child: Obx(
                    () => Text(
                      explore1ItemModelObj.skirtTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10(context).copyWith(
                        letterSpacing: getHorizontalSize(
                          context,
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
