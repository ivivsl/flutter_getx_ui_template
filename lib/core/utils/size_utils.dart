
import 'package:flutter/material.dart';

// This is where the magic happens.
// This functions are responsible to make UI responsive across all the mobile devices.

Size size(context) =>
    View.of(context).physicalSize / View.of(context).devicePixelRatio;

// Caution! If you think these are static values and are used to build a static UI,  you mustn’t.
// These are the Viewport values of your Figma Design.
// These are used in the code as a reference to create your UI Responsively.
const num FIGMA_DESIGN_WIDTH = 375;
const num FIGMA_DESIGN_HEIGHT = 812;
const num FIGMA_DESIGN_STATUS_BAR = 44;

///This method is used to get device viewport width.
num width(context) {
  return size(context).width;
}

///This method is used to get device viewport height.
num height(context) {
  num statusBar = MediaQueryData.fromView(View.of(context)).viewPadding.top;
  num bottomBar = MediaQueryData.fromView(View.of(context)).viewPadding.bottom;
  num screenHeight = size(context).height - statusBar - bottomBar;
  return screenHeight;
}

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize(context, double px) {
  return ((px * width(context)) / FIGMA_DESIGN_WIDTH);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize(context, double px) {
  return ((px * height(context)) /
      (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR));
}

///This method is used to set smallest px in image height and width
double getSize(context, double px) {
  var height = getVerticalSize(context, px);
  var width = getHorizontalSize(context, px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set text font size according to Viewport
double getFontSize(context, double px) {
  return getSize(context, px);
}

///This method is used to set padding responsively
EdgeInsetsGeometry getPadding(BuildContext context, {
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    context,
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

///This method is used to set margin responsively
EdgeInsetsGeometry getMargin(BuildContext context, {
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  return getMarginOrPadding(
    context,
    all: all,
    left: left,
    top: top,
    right: right,
    bottom: bottom,
  );
}

///This method is used to get padding or margin responsively
EdgeInsetsGeometry getMarginOrPadding(
  context, {
  double? all,
  double? left,
  double? top,
  double? right,
  double? bottom,
}) {
  if (all != null) {
    left = all;
    top = all;
    right = all;
    bottom = all;
  }
  return EdgeInsets.only(
    left: getHorizontalSize(
      context,
      left ?? 0,
    ),
    top: getVerticalSize(
      context,
      top ?? 0,
    ),
    right: getHorizontalSize(
      context,
      right ?? 0,
    ),
    bottom: getVerticalSize(
      context,
      bottom ?? 0,
    ),
  );
}
