import '../notification_offer_screen/widgets/listoffer_item_widget.dart';
import 'controller/notification_offer_controller.dart';
import 'models/listoffer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:meng_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:meng_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationOfferScreen extends GetWidget<NotificationOfferController> {
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
                    margin: getMargin(context, left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft6();
                    }),
                title: AppbarTitle(
                    text: "lbl_notification".tr, margin: getMargin(context, left: 12))),
            body: Padding(
                padding: getPadding(context, top: 12),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(context, 1));
                    },
                    itemCount: controller.notificationOfferModelObj.value
                        .listofferItemList.value.length,
                    itemBuilder: (context, index) {
                      ListofferItemModel model = controller
                          .notificationOfferModelObj
                          .value
                          .listofferItemList
                          .value[index];
                      return ListofferItemWidget(model);
                    })))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
