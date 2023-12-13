
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomSearchView extends StatelessWidget {
  CustomSearchView(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints});

  SearchViewShape? shape;

  SearchViewPadding? padding;

  SearchViewVariant? variant;

  SearchViewFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSearchViewWidget(context),
          )
        : _buildSearchViewWidget(context);
  }

  _buildSearchViewWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(context),
        decoration: _buildDecoration(context),
      ),
    );
  }

  _buildDecoration(BuildContext context) {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(context),
      border: _setBorderStyle(context),
      enabledBorder: _setBorderStyle(context),
      focusedBorder: _setBorderStyle(context),
      disabledBorder: _setBorderStyle(context),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(context),
    );
  }

  _setFontStyle(context) {
    switch (fontStyle) {
      case SearchViewFontStyle.PoppinsBold12Indigo90087:
        return TextStyle(
          color: ColorConstant.indigo90087,
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
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            context,
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            context,
            1.50,
          ),
        );
    }
  }

  _setOutlineBorderRadius(context) {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            context,
            5.00,
          ),
        );
    }
  }

  _setBorderStyle(context) {
    switch (variant) {
      case SearchViewVariant.OutlineLightblueA200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(context),
          borderSide: BorderSide(
            color: ColorConstant.lightBlueA200,
            width: 1,
          ),
        );
      case SearchViewVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(context),
          borderSide: BorderSide(
            color: ColorConstant.blue50,
            width: 1,
          ),
        );
    }
  }

  _setFilled() {
    switch (variant) {
      case SearchViewVariant.OutlineBlue50:
        return false;
      case SearchViewVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding(BuildContext context) {
    switch (padding) {
      case SearchViewPadding.PaddingT12:
        return getPadding(
          context,
          top: 13,
          bottom: 13,
        );
      default:
        return getPadding(
          context,
          top: 14,
          right: 14,
          bottom: 14,
        );
    }
  }
}

enum SearchViewShape {
  RoundedBorder5,
}

enum SearchViewPadding {
  PaddingT13,
  PaddingT12,
}

enum SearchViewVariant {
  None,
  OutlineBlue50,
  OutlineLightblueA200,
}

enum SearchViewFontStyle {
  PoppinsRegular12Bluegray300,
  PoppinsBold12Indigo90087,
}
