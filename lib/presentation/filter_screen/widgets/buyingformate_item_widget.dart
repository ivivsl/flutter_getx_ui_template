import '../models/buyingformate_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class BuyingformateItemWidget extends StatelessWidget {
  BuyingformateItemWidget(this.buyingformateItemModelObj);

  BuyingformateItemModel buyingformateItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: getPadding(context,
            left: 16,
            right: 16,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            buyingformateItemModelObj.alllistingsTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: buyingformateItemModelObj.isSelected.value
                  ? ColorConstant.lightBlueA200
                  : ColorConstant.blueGray300,
              fontSize: getFontSize(
                context,
                12,
              ),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: buyingformateItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.lightBlueA20019,
          shape: buyingformateItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      context,
                      5,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.blue50,
                    width: getHorizontalSize(
                      context,
                      1,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      context,
                      5,
                    ),
                  ),
                ),
          onSelected: (value) {
            buyingformateItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
