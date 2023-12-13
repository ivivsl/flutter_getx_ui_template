import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class AppbarSearchview extends StatelessWidget {
  AppbarSearchview({this.hintText, this.controller, this.margin});

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: getHorizontalSize(
          context,
          263,
        ),
        focusNode: FocusNode(),
        controller: controller,
        hintText: hintText,
        prefix: Container(
          margin: getMargin(context, 
            left: 16,
            top: 15,
            right: 8,
            bottom: 15,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearchLightBlueA200,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(context,
            46,
          ),
        ),
        suffix: Padding(
          padding: EdgeInsets.only(
            right: getHorizontalSize(
              context,
              15,
            ),
          ),
          child: IconButton(
            onPressed: () {
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}
