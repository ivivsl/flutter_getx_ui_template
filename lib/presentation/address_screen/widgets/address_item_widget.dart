import '../controller/address_controller.dart';
import '../models/address_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AddressItemWidget extends StatelessWidget {
  AddressItemWidget(this.addressItemModelObj);

  AddressItemModel addressItemModelObj;

  var controller = Get.find<AddressController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(context,
          left: 24,
          top: 20,
          right: 24,
          bottom: 22,
        ),
        decoration: AppDecoration.outlineLightblueA200(context).copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5(context),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                addressItemModelObj.priscekilaTxt.value,
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
                264,
              ),
              margin: getMargin(context,
                top: 19,
                right: 30,
              ),
              child: Text(
                "msg_3711_spring_hil".tr,
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
                top: 20,
              ),
              child: Text(
                "lbl_99_1234567890".tr,
                overflow: TextOverflow.ellipsis,
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
                top: 19,
                bottom: 3,
              ),
              child: Row(
                children: [
                  Text(
                    "lbl_edit".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14LightblueA200(context).copyWith(
                      letterSpacing: getHorizontalSize(
                        context,
                        0.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(context,
                      left: 32,
                    ),
                    child: Text(
                      "lbl_delete".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Pink300(context).copyWith(
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
