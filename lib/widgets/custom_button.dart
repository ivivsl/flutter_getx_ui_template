

import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(context),
          )
        : _buildButtonWidget(context);
  }

  _buildButtonWidget(context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(context),
        child: _buildButtonWithOrWithoutIcon(context),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon(context) {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(context),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(context),
      );
    }
  }

  _buildTextButtonStyle(context) {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(context,40),
      ),
      padding: _setPadding(context),
      backgroundColor: _setColor(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(context),
      ),
    );
  }

  _setPadding(BuildContext context) {
    switch (padding) {
      default:
        return getPadding(
          context,
          all: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillLightblueA200:
        return ColorConstant.lightBlueA200;
      default:
        return ColorConstant.lightBlueA200;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.FillLightblueA200:
        return null;
      default:
        return ColorConstant.lightBlueA2003d;
    }
  }

  _setBorderRadius(context) {
    switch (shape) {
      case ButtonShape.CustomBorderLR5:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              context,
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              context,
              5.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              context,
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              context,
              5.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            context,
            5.00,
          ),
        );
    }
  }

  _setFontStyle(context) {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsBold12WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            context,
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            context,
            1.50,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            context,
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            context,
            1.50,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder5,
  CustomBorderLR5,
}

enum ButtonPadding {
  PaddingAll17,
}

enum ButtonVariant {
  OutlineLightblueA2003d,
  FillLightblueA200,
}

enum ButtonFontStyle {
  PoppinsBold14WhiteA700,
  PoppinsBold12WhiteA700,
}
