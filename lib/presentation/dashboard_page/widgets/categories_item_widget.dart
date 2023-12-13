import '../controller/dashboard_controller.dart';
import '../models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(this.categoriesItemModelObj);

  CategoriesItemModel categoriesItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            context,
            right: 12,
            bottom: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 70,
                width: 70,
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowleftLightBlueA20070x70,
                ),
              ),
              Padding(
                padding: getPadding(
                  context,
                  top: 7,
                ),
                child: Obx(
                  () => Text(
                    categoriesItemModelObj.manshirtTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10(context).copyWith(
                      letterSpacing: getHorizontalSize(
                        context,
                        0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
