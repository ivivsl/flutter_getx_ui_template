
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(context),
          )
        : _buildTextFormFieldWidget(context);
  }

  _buildTextFormFieldWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(context),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(context),
        validator: validator,
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
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(context),
    );
  }

  _setFontStyle(context) {
    switch (fontStyle) {
      case TextFormFieldFontStyle.PoppinsBold12Bluegray300:
        return TextStyle(
          color: ColorConstant.blueGray300,
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
      case TextFormFieldFontStyle.PoppinsSemiBold12Bluegray300:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            context,
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
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
      case TextFormFieldVariant.OutlineBlue50_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(context),
          borderSide: BorderSide(
            color: ColorConstant.blue50,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
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

  _setFillColor() {
    switch (variant) {
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBlue50_1:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding(BuildContext context) {
    switch (padding) {
      case TextFormFieldPadding.PaddingT14:
        return getPadding(
          context, 
          top: 15,
          right: 15,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingT19:
        return getPadding(
          context,
          left: 12,
          top: 19,
          right: 12,
          bottom: 19,
        );
      case TextFormFieldPadding.PaddingT17_1:
        return getPadding(
          context,
          all: 15,
        );
      case TextFormFieldPadding.PaddingT71:
        return getPadding(
          context,
          left: 16,
          top: 71,
          right: 16,
          bottom: 71,
        );
      default:
        return getPadding(
          context,
          left: 12,
          top: 15,
          right: 12,
          bottom: 15,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder5,
}

enum TextFormFieldPadding {
  PaddingT14,
  PaddingT19,
  PaddingT17,
  PaddingT17_1,
  PaddingT71,
}

enum TextFormFieldVariant {
  None,
  OutlineBlue50,
  OutlineBlue50_1,
}

enum TextFormFieldFontStyle {
  PoppinsRegular12Bluegray300,
  PoppinsBold12Bluegray300,
  PoppinsSemiBold12Bluegray300,
}
