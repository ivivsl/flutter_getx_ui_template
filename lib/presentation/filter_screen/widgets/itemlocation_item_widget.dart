
import '../models/itemlocation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ItemlocationItemWidget extends StatelessWidget {
  ItemlocationItemWidget(this.itemlocationItemModelObj);

  ItemlocationItemModel itemlocationItemModelObj;

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
            itemlocationItemModelObj.usonlyTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: itemlocationItemModelObj.isSelected.value
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
          selected: itemlocationItemModelObj.isSelected.value,
          backgroundColor: Colors.transparent,
          selectedColor: ColorConstant.lightBlueA20019,
          shape: itemlocationItemModelObj.isSelected.value
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
            itemlocationItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
