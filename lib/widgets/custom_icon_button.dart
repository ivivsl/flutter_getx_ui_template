
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(context),
          )
        : _buildIconButtonWidget(context);
  }

  _buildIconButtonWidget(context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(context,height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(context,width ?? 0),
          height: getSize(context,height ?? 0),
          padding: _setPadding(context),
          decoration: _buildDecoration(context),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration(context) {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(context),
      borderRadius: _setBorderRadius(context),
      boxShadow: _setBoxShadow(context),
    );
  }

  _setPadding(BuildContext context) {
    switch (padding) {
      case IconButtonPadding.PaddingAll20:
        return getPadding(
          context,
          all: 20,
        );
      case IconButtonPadding.PaddingAll28:
        return getPadding(
          context,
          all: 28,
        );
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          context,
          all: 8,
        );
      default:
        return getPadding(
          context,
          all: 23,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillLightblueA200:
        return ColorConstant.lightBlueA200;
      case IconButtonVariant.OutlineLightblueA2003d:
        return ColorConstant.lightBlueA200;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorder(context) {
    switch (variant) {
      case IconButtonVariant.FillLightblueA200:
      case IconButtonVariant.OutlineLightblueA2003d:
        return null;
      default:
        return Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            context,
            1.00,
          ),
        );
    }
  }

  _setBorderRadius(context) {
    switch (shape) {
      case IconButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            context,
            16.00,
          ),
        );
      case IconButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            context,
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            context,
            35.00,
          ),
        );
    }
  }

  _setBoxShadow(context) {
    switch (variant) {
      case IconButtonVariant.OutlineLightblueA2003d:
        return [
          BoxShadow(
            color: ColorConstant.lightBlueA2003d,
            spreadRadius: getHorizontalSize(
              context,
              2.00,
            ),
            blurRadius: getHorizontalSize(
              context,
              2.00,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ];
      case IconButtonVariant.OutlineBlue50:
      case IconButtonVariant.FillLightblueA200:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder35,
  RoundedBorder16,
  CircleBorder12,
}

enum IconButtonPadding {
  PaddingAll23,
  PaddingAll20,
  PaddingAll28,
  PaddingAll8,
}

enum IconButtonVariant {
  OutlineBlue50,
  FillLightblueA200,
  OutlineLightblueA2003d,
}
