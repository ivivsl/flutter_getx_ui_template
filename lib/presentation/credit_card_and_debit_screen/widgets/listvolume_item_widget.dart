import '../controller/credit_card_and_debit_controller.dart';
import '../models/listvolume_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListvolumeItemWidget extends StatelessWidget {
  ListvolumeItemWidget(this.listvolumeItemModelObj, {this.onTapCreditcard});

  ListvolumeItemModel listvolumeItemModelObj;

  var controller = Get.find<CreditCardAndDebitController>();

  VoidCallback? onTapCreditcard;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapCreditcard?.call();
        },
        child: Container(
          padding: getPadding(
            context,
            left: 21,
            top: 24,
            right: 21,
            bottom: 24,
          ),
          decoration: AppDecoration.fillLightblueA200.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5(context),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgVolume,
                height: getVerticalSize(
                  context,
                  22,
                ),
                width: getHorizontalSize(
                  context,
                  36,
                ),
                margin: getMargin(
                  context,
                  left: 3,
                ),
              ),
              Padding(
                padding: getPadding(
                  context,
                  top: 30,
                ),
                child: Text(
                  "msg_6326_9124".tr,
                  overflow: TextOverflow.ellipsis,
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
                padding: getPadding(
                  context,
                  top: 17,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        context,
                        top: 2,
                      ),
                      child: Text(
                        "lbl_card_holder".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular10WhiteA70087(context)
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            context,
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        context,
                        left: 37,
                        bottom: 2,
                      ),
                      child: Text(
                        "lbl_card_save".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular10WhiteA70087(context)
                            .copyWith(
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
                padding: getPadding(
                  context,
                  left: 1,
                  top: 1,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        context,
                        top: 1,
                      ),
                      child: Text(
                        "lbl_dominic_ovo".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold10WhiteA700(context)
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            context,
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        context,
                        left: 41,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_06_24".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold10WhiteA700(context)
                            .copyWith(
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
