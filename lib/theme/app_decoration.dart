import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration outlineLightblueA200(context) => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.lightBlueA200,
          width: getHorizontalSize(
            context,
            1,
          ),
        ),
      );
  static BoxDecoration txtOutlineBlue501(context) => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            context,
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillLightblueA20019 => BoxDecoration(
        color: ColorConstant.lightBlueA20019,
      );
  static BoxDecoration get fillIndigoA200 => BoxDecoration(
        color: ColorConstant.indigoA200,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillLightblueA200 => BoxDecoration(
        color: ColorConstant.lightBlueA200,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration outlineBlue501(context) => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            context,
            1,
          ),
        ),
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration txtOutlineBlue50(context) => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            context,
            1,
          ),
        ),
      );
  static BoxDecoration outlineBlue50(context) => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            context,
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration txtOutlineLightblueA200(context) => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.lightBlueA200,
          width: getHorizontalSize(
            context,
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8(context) => BorderRadius.circular(
    getHorizontalSize(
      context,
      8,
    ),
  );

  static BorderRadius circleBorder24(context) => BorderRadius.circular(
    getHorizontalSize(
      context,
      24,
    ),
  );

  static BorderRadius roundedBorder5(context) => BorderRadius.circular(
    getHorizontalSize(
      context,
      5,
    ),
  );

  static BorderRadius circleBorder36(context) => BorderRadius.circular(
    getHorizontalSize(
      context,
      36,
    ),
  );

  static BorderRadius txtRoundedBorder5(context) => BorderRadius.circular(
    getHorizontalSize(
      context,
      5,
    ),
  );

  static BorderRadius txtCircleBorder24(context) => BorderRadius.circular(
    getHorizontalSize(
      context,
      24,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
