import '../notification_feed_screen/widgets/listnewproduct_item_widget.dart';
import 'controller/notification_feed_controller.dart';
import 'models/listnewproduct_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationFeedScreen extends GetWidget<NotificationFeedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(width: size(context).width,
                height: getVerticalSize(context, 56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(context, 24),
                    width: getSize(context, 24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(context, left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft7();
                    }),
                title: AppbarTitle(
                    text: "lbl_feed".tr, margin: getMargin(context, left: 12))),
            body: Padding(
                padding: getPadding(context, top: 11),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(context, 1));
                    },
                    itemCount: controller.notificationFeedModelObj.value
                        .listnewproductItemList.value.length,
                    itemBuilder: (context, index) {
                      ListnewproductItemModel model = controller
                          .notificationFeedModelObj
                          .value
                          .listnewproductItemList
                          .value[index];
                      return ListnewproductItemWidget(model, onTapFeeditem: () {
                        onTapFeeditem();
                      });
                    })))));
  }

  onTapFeeditem() {
    Get.toNamed(AppRoutes.productDetailScreen);
  }

  onTapArrowleft7() {
    Get.back();
  }
}
