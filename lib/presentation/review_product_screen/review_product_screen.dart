import 'controller/review_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:meng_s_application1/widgets/custom_button.dart';

class ReviewProductScreen extends GetWidget<ReviewProductController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context,24),
                leadingWidth: 43,
                leading: AppbarImage(
                    height: getSize(context,24),
                    width: getSize(context,24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 19),
                    onTap: () {
                      onTapArrowleft3();
                    }),
                title: AppbarTitle(
                    text: "lbl_5_review2".tr, margin: getMargin(context, left: 12))),
            body: SizedBox(
                width: size(context).width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(context, left: 19, top: 34, right: 23, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgProfilepicture48x481,
                                    height: getSize(context, 48),
                                    width: getSize(context, 48),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(context, 24))),
                                Padding(
                                    padding:
                                        getPadding(context, left: 16, top: 2, bottom: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_james_lawson".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold14Indigo900(context)
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                            context,
                                                              0.5))),
                                          Padding(
                                              padding: getPadding(context, top: 4),
                                              child: RatingBar.builder(
                                                  initialRating: 5,
                                                  minRating: 0,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: false,
                                                  itemSize: getVerticalSize(context,16),
                                                  itemCount: 5,
                                                  updateOnDrag: true,
                                                  onRatingUpdate: (rating) {},
                                                  itemBuilder: (context, _) {
                                                    return Icon(Icons.star,
                                                        color: ColorConstant
                                                            .yellow700);
                                                  }))
                                        ]))
                              ]),
                              Container(
                                  width: getHorizontalSize(context, 333),
                                  margin: getMargin(context, top: 18),
                                  child: Text("msg_air_max_are_alw".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 16),
                                  child: Text("msg_december_10_20".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 32),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgProfilepicture48x482,
                                            height: getSize(context, 48),
                                            width: getSize(context,48),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(context,24))),
                                        Padding(
                                            padding: getPadding(context, 
                                                left: 16, top: 1, bottom: 4),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_laura_octavian".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold14Indigo900(context)
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                    context,
                                                                      0.5))),
                                                  Padding(
                                                      padding:
                                                          getPadding(context, top: 5),
                                                      child: RatingBar.builder(
                                                          initialRating: 4,
                                                          minRating: 0,
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating:
                                                              false,
                                                          itemSize:
                                                              getVerticalSize(
                                                                context,
                                                                  16),
                                                          unratedColor:
                                                              ColorConstant
                                                                  .blue50,
                                                          itemCount: 5,
                                                          updateOnDrag: true,
                                                          onRatingUpdate:
                                                              (rating) {},
                                                          itemBuilder:
                                                              (context, _) {
                                                            return Icon(
                                                                Icons.star,
                                                                color: ColorConstant
                                                                    .yellow700);
                                                          }))
                                                ]))
                                      ])),
                              Container(
                                  width: getHorizontalSize(context, 317),
                                  margin: getMargin(context, top: 18, right: 15),
                                  child: Text("msg_this_is_really".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 16),
                                  child: Text("msg_december_10_20".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 34),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProfilepicture48x483,
                                        height: getSize(context, 48),
                                        width: getSize(context, 48),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(context, 24))),
                                    Padding(
                                        padding: getPadding(context, 
                                            left: 16, top: 3, bottom: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_jhonson_bridge".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold14Indigo900
                                                      (context)
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                context,
                                                                  0.5))),
                                              Padding(
                                                  padding: getPadding(context, top: 3),
                                                  child: RatingBar.builder(
                                                      initialRating: 5,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: false,
                                                      itemSize:
                                                          getVerticalSize(context, 16),
                                                      itemCount: 5,
                                                      updateOnDrag: true,
                                                      onRatingUpdate:
                                                          (rating) {},
                                                      itemBuilder:
                                                          (context, _) {
                                                        return Icon(Icons.star,
                                                            color: ColorConstant
                                                                .yellow700);
                                                      }))
                                            ]))
                                  ])),
                              Container(
                                  width: getHorizontalSize(context,331),
                                  margin: getMargin(context, top: 18),
                                  child: Text("msg_air_max_are_alw2".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 16),
                                  child: Text("msg_december_10_20".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 26),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgProfilepicture48x482,
                                            height: getSize(context, 48),
                                            width: getSize(context, 48),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(context, 24))),
                                        Padding(
                                            padding: getPadding(context, 
                                                left: 16, top: 1, bottom: 4),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_laura_octavian".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold14Indigo900(context)
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                    context,
                                                                      0.5))),
                                                  Padding(
                                                      padding:
                                                          getPadding(context, top: 5),
                                                      child: RatingBar.builder(
                                                          initialRating: 4,
                                                          minRating: 0,
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating:
                                                              false,
                                                          itemSize:
                                                              getVerticalSize(
                                                                context,
                                                                  16),
                                                          unratedColor:
                                                              ColorConstant
                                                                  .blue50,
                                                          itemCount: 5,
                                                          updateOnDrag: true,
                                                          onRatingUpdate:
                                                              (rating) {},
                                                          itemBuilder:
                                                              (context, _) {
                                                            return Icon(
                                                                Icons.star,
                                                                color: ColorConstant
                                                                    .yellow700);
                                                          }))
                                                ]))
                                      ])),
                              Container(
                                  width: getHorizontalSize(context, 317),
                                  margin: getMargin(context, top: 18, right: 15),
                                  child: Text("msg_this_is_really".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 16),
                                  child: Text("msg_december_10_20".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 34),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgProfilepicture48x483,
                                        height: getSize(context, 48),
                                        width: getSize(context, 48),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(context, 24))),
                                    Padding(
                                        padding: getPadding(context, 
                                            left: 16, top: 3, bottom: 4),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_jhonson_bridge".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold14Indigo900(context)
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                context,
                                                                  0.5))),
                                              Padding(
                                                  padding: getPadding(context, top: 3),
                                                  child: RatingBar.builder(
                                                      initialRating: 5,
                                                      minRating: 0,
                                                      direction:
                                                          Axis.horizontal,
                                                      allowHalfRating: false,
                                                      itemSize:
                                                          getVerticalSize(context,16),
                                                      itemCount: 5,
                                                      updateOnDrag: true,
                                                      onRatingUpdate:
                                                          (rating) {},
                                                      itemBuilder:
                                                          (context, _) {
                                                        return Icon(Icons.star,
                                                            color: ColorConstant
                                                                .yellow700);
                                                      }))
                                            ]))
                                  ])),
                              Container(
                                  width: getHorizontalSize(context,331),
                                  margin: getMargin(context, top: 18),
                                  child: Text("msg_air_max_are_alw2".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5)))),
                              Padding(
                                  padding: getPadding(context, top: 16),
                                  child: Text("msg_december_10_20".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular10(context)
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(context, 0.5))))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(context, 57),
                text: "lbl_write_review".tr,
                margin: getMargin(context, left: 19, right: 13, bottom: 58),
                onTap: () {
                  onTapWritereview();
                })));
  }

  onTapWritereview() {
    Get.toNamed(
      AppRoutes.writeReviewFillScreen,
    );
  }

  onTapArrowleft3() {
    Get.back();
  }
}
