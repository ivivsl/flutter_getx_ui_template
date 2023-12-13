import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:meng_s_application1/core/app_export.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override
  Widget build(BuildContext context) {
    Map<VoidCallback, String> _data = {
      onTapSplashScreen: 'lbl_splash_screen',
      onTapLogin: 'lbl_login',
      onTapRegisterform: 'lbl_register_form',
      onTapDashboardContainer: 'msg_dashboard_container',
      onTapOfferScreen: 'lbl_offer_screen',
      onTapFavoriteProduct: 'msg_favorite_produc',
      onTapProductDetail: 'lbl_product_detail',
      onTapReviewProduct: 'lbl_review_product',
      onTapWriteReviewFill: 'msg_write_review_fill',
      onTapNotificationOne: 'msg_notification_one',
      onTapNotificationOffer: 'msg_notification_offer',
      onTapNotificationFeed: 'msg_notification_feed',
      onTapNotification: 'lbl_notification',
      onTapSearch: 'lbl_search',
      onTapSearchResult: 'lbl_search_result',
      onTapSearchResultOne: 'msg_search_result_one',
      onTapListCategory: 'lbl_list_category',
      onTapSortBy: 'lbl_sort_by',
      onTapFilter: 'lbl_filter',
      onTapShipTo: 'lbl_ship_to',
      onTapPaymentMethod: 'lbl_payment_method',
      onTapChooseCreditOrDebitCard: 'msg_choose_credit_or',
      onTapSuccessScreen: 'lbl_success_screen',
      onTapProfile: 'lbl_profile',
      onTapChangePassword: 'lbl_change_password',
      onTapOrder: 'lbl_order',
      onTapOrderDetails: 'lbl_order_details',
      onTapAddAddress: 'lbl_add_address',
      onTapAddress: 'lbl_address',
      onTapAddPayment: 'lbl_add_payment',
      onTapCreditCardAndDebit: 'msg_credit_card_and',
      onTapAddCard: 'lbl_add_card',
      onTapLailyfaFebrinaCard: 'msg_lailyfa_febrina'
    };
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: _body(
          context,
          children: [
            for (int i = 0; i < _data.length; i++)
              _widgetBody(
                context,
                onTap: _data.keys.elementAt(i),
                text: _data.values.elementAt(i),
              )
          ],
        ),
      ),
    );
  }

  _body(BuildContext context, {required List<Widget> children}) => Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(context,
                                  left: 20, top: 10, right: 20, bottom: 10),
                              child: Text("lbl_app_navigation".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      AppStyle.txtRobotoRegular20(context)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(context, left: 20),
                              child: Text("msg_check_your_app_s".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      AppStyle.txtRobotoRegular16(context)))),
                      Padding(
                          padding: getPadding(context, top: 5),
                          child: Divider(
                              height: getVerticalSize(context, 1),
                              thickness: getVerticalSize(context, 1),
                              color: ColorConstant.black900))
                    ])),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: children,
                  ),
                ),
              ),
            )
          ],
        ),
      );

  GestureDetector _widgetBody(BuildContext context,
          {required void Function()? onTap, required String text}) =>
      GestureDetector(
          onTap: onTap,
          child: Container(
              decoration: AppDecoration.fillWhiteA700,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: getPadding(context,
                            left: 20, top: 10, right: 20, bottom: 10),
                        child: Text(text.tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtRobotoRegular20(context)))),
                Padding(
                    padding: getPadding(context, top: 5),
                    child: Divider(
                        height: getVerticalSize(context, 1),
                        thickness: getVerticalSize(context, 1),
                        color: ColorConstant.blueGray400))
              ])));

  onTapSplashScreen() {
    Get.toNamed(
      AppRoutes.splashScreen,
    );
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapRegisterform() {
    Get.toNamed(
      AppRoutes.registerFormScreen,
    );
  }

  onTapDashboardContainer() {
    Get.toNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }

  onTapOfferScreen() {
    Get.toNamed(
      AppRoutes.offerScreen,
    );
  }

  onTapFavoriteProduct() {
    Get.toNamed(
      AppRoutes.favoriteProductScreen,
    );
  }

  onTapProductDetail() {
    Get.toNamed(
      AppRoutes.productDetailScreen,
    );
  }

  onTapReviewProduct() {
    Get.toNamed(
      AppRoutes.reviewProductScreen,
    );
  }

  onTapWriteReviewFill() {
    Get.toNamed(
      AppRoutes.writeReviewFillScreen,
    );
  }

  onTapNotificationOne() {
    Get.toNamed(
      AppRoutes.notificationOneScreen,
    );
  }

  onTapNotificationOffer() {
    Get.toNamed(
      AppRoutes.notificationOfferScreen,
    );
  }

  onTapNotificationFeed() {
    Get.toNamed(
      AppRoutes.notificationFeedScreen,
    );
  }

  onTapNotification() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  onTapSearch() {
    Get.toNamed(
      AppRoutes.searchScreen,
    );
  }

  onTapSearchResult() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
    );
  }

  onTapSearchResultOne() {
    Get.toNamed(
      AppRoutes.searchResultOneScreen,
    );
  }

  onTapListCategory() {
    Get.toNamed(
      AppRoutes.listCategoryScreen,
    );
  }

  onTapSortBy() {
    Get.toNamed(
      AppRoutes.sortByScreen,
    );
  }

  onTapFilter() {
    Get.toNamed(
      AppRoutes.filterScreen,
    );
  }

  onTapShipTo() {
    Get.toNamed(
      AppRoutes.shipToScreen,
    );
  }

  onTapPaymentMethod() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  onTapChooseCreditOrDebitCard() {
    Get.toNamed(
      AppRoutes.chooseCreditOrDebitCardScreen,
    );
  }

  onTapSuccessScreen() {
    Get.toNamed(
      AppRoutes.successScreen,
    );
  }

  onTapProfile() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  onTapChangePassword() {
    Get.toNamed(
      AppRoutes.changePasswordScreen,
    );
  }

  onTapOrder() {
    Get.toNamed(
      AppRoutes.orderScreen,
    );
  }

  onTapOrderDetails() {
    Get.toNamed(
      AppRoutes.orderDetailsScreen,
    );
  }

  onTapAddAddress() {
    Get.toNamed(
      AppRoutes.addAddressScreen,
    );
  }

  onTapAddress() {
    Get.toNamed(
      AppRoutes.addressScreen,
    );
  }

  onTapAddPayment() {
    Get.toNamed(
      AppRoutes.addPaymentScreen,
    );
  }

  onTapCreditCardAndDebit() {
    Get.toNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }

  onTapAddCard() {
    Get.toNamed(
      AppRoutes.addCardScreen,
    );
  }

  onTapLailyfaFebrinaCard() {
    Get.toNamed(
      AppRoutes.lailyfaFebrinaCardScreen,
    );
  }
}
