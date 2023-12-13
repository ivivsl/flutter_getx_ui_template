import '../controller/dashboard_controller.dart';
import '../models/sliderofferbannertitl_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SliderofferbannertitlItemWidget extends StatelessWidget {
  SliderofferbannertitlItemWidget(this.sliderofferbannertitlItemModelObj);

  SliderofferbannertitlItemModel sliderofferbannertitlItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        context,
        206,
      ),
      width: getHorizontalSize(
        context,
        343,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPromotionimage206x343,
            height: getVerticalSize(
              context,
              206,
            ),
            width: getHorizontalSize(
              context,
              343,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                context,
                5,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: getPadding(context, 
                left: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      context,
                      209,
                    ),
                    child: Text(
                      "msg_super_flash_sal".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold24(context).copyWith(
                        letterSpacing: getHorizontalSize(
                          context,
                          0.5,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(context, 
                      top: 31,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: getHorizontalSize(
                            context,
                            42,
                          ),
                          padding: getPadding(context, 
                            left: 9,
                            top: 8,
                            right: 9,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtFillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5(context),
                          ),
                          child: Text(
                            "lbl_08".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold16(context).copyWith(
                              letterSpacing: getHorizontalSize(
                                context,
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(context, 
                            left: 4,
                            top: 10,
                            bottom: 9,
                          ),
                          child: Text(
                            "lbl".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold14WhiteA700(context).copyWith(
                              letterSpacing: getHorizontalSize(
                                context,
                                0.07,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            context, 
                            42,
                          ),
                          margin: getMargin(context, 
                            left: 4,
                          ),
                          padding: getPadding(context, 
                            left: 9,
                            top: 8,
                            right: 9,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtFillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5(context),
                          ),
                          child: Text(
                            "lbl_34".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold16(context).copyWith(
                              letterSpacing: getHorizontalSize(
                                context,
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(context, 
                            left: 4,
                            top: 10,
                            bottom: 9,
                          ),
                          child: Text(
                            "lbl".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold14WhiteA700(context).copyWith(
                              letterSpacing: getHorizontalSize(
                                context,
                                0.07,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            context,
                            42,
                          ),
                          margin: getMargin(context, 
                            left: 4,
                          ),
                          padding: getPadding(context, 
                            left: 10,
                            top: 8,
                            right: 10,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.txtFillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5(context),
                          ),
                          child: Text(
                            "lbl_52".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsBold16(context).copyWith(
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
        ],
      ),
    );
  }
}
