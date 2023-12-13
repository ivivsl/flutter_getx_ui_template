import 'controller/write_review_fill_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';
import 'package:meng_s_application1/widgets/custom_text_form_field.dart';

class WriteReviewFillScreen extends GetWidget<WriteReviewFillController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              width: size(context).width,
                height: getVerticalSize(context, 56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft4();
                    }),
                title: AppbarTitle(
                    text: "lbl_write_review".tr, margin: getMargin(context, left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(context, left: 15, top: 27, right: 15, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(context, 343),
                          child: Text("msg_please_write_ov".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      Padding(
                          padding: getPadding(context, top: 13),
                          child: RatingBar.builder(
                              initialRating: 4,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemSize: getVerticalSize(context, 32),
                              unratedColor: ColorConstant.blue50,
                              itemCount: 5,
                              updateOnDrag: true,
                              onRatingUpdate: (rating) {},
                              itemBuilder: (context, _) {
                                return Icon(Icons.star,
                                    color: ColorConstant.yellow700);
                              })),
                      Padding(
                          padding: getPadding(context, top: 22),
                          child: Text("msg_write_your_revi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900(context)
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(context, 0.5)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.addreviewController,
                          hintText: "lbl_add_review".tr,
                          margin: getMargin(context, top: 13, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT71,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsBold12Bluegray300,
                          textInputAction: TextInputAction.done,
                          maxLines: 8)
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_write_review".tr,
                margin: getMargin(context, left: 16, right: 16, bottom: 34),
                onTap: () {
                  onTapWritereview();
                })));
  }

  onTapWritereview() {
    Get.offNamed(
      AppRoutes.reviewProductScreen,
    );
  }

  onTapArrowleft4() {
    Get.back();
  }
}
