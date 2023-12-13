import 'package:meng_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:meng_s_application1/presentation/splash_screen/binding/splash_binding.dart';
import 'package:meng_s_application1/presentation/login_screen/login_screen.dart';
import 'package:meng_s_application1/presentation/login_screen/binding/login_binding.dart';
import 'package:meng_s_application1/presentation/register_form_screen/register_form_screen.dart';
import 'package:meng_s_application1/presentation/register_form_screen/binding/register_form_binding.dart';
import 'package:meng_s_application1/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:meng_s_application1/presentation/dashboard_container_screen/binding/dashboard_container_binding.dart';
import 'package:meng_s_application1/presentation/offer_screen/offer_screen.dart';
import 'package:meng_s_application1/presentation/offer_screen/binding/offer_binding.dart';
import 'package:meng_s_application1/presentation/favorite_product_screen/favorite_product_screen.dart';
import 'package:meng_s_application1/presentation/favorite_product_screen/binding/favorite_product_binding.dart';
import 'package:meng_s_application1/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:meng_s_application1/presentation/product_detail_screen/binding/product_detail_binding.dart';
import 'package:meng_s_application1/presentation/review_product_screen/review_product_screen.dart';
import 'package:meng_s_application1/presentation/review_product_screen/binding/review_product_binding.dart';
import 'package:meng_s_application1/presentation/write_review_fill_screen/write_review_fill_screen.dart';
import 'package:meng_s_application1/presentation/write_review_fill_screen/binding/write_review_fill_binding.dart';
import 'package:meng_s_application1/presentation/notification_one_screen/notification_one_screen.dart';
import 'package:meng_s_application1/presentation/notification_one_screen/binding/notification_one_binding.dart';
import 'package:meng_s_application1/presentation/notification_offer_screen/notification_offer_screen.dart';
import 'package:meng_s_application1/presentation/notification_offer_screen/binding/notification_offer_binding.dart';
import 'package:meng_s_application1/presentation/notification_feed_screen/notification_feed_screen.dart';
import 'package:meng_s_application1/presentation/notification_feed_screen/binding/notification_feed_binding.dart';
import 'package:meng_s_application1/presentation/notification_screen/notification_screen.dart';
import 'package:meng_s_application1/presentation/notification_screen/binding/notification_binding.dart';
import 'package:meng_s_application1/presentation/search_screen/search_screen.dart';
import 'package:meng_s_application1/presentation/search_screen/binding/search_binding.dart';
import 'package:meng_s_application1/presentation/search_result_screen/search_result_screen.dart';
import 'package:meng_s_application1/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:meng_s_application1/presentation/search_result_one_screen/search_result_one_screen.dart';
import 'package:meng_s_application1/presentation/search_result_one_screen/binding/search_result_one_binding.dart';
import 'package:meng_s_application1/presentation/list_category_screen/list_category_screen.dart';
import 'package:meng_s_application1/presentation/list_category_screen/binding/list_category_binding.dart';
import 'package:meng_s_application1/presentation/sort_by_screen/sort_by_screen.dart';
import 'package:meng_s_application1/presentation/sort_by_screen/binding/sort_by_binding.dart';
import 'package:meng_s_application1/presentation/filter_screen/filter_screen.dart';
import 'package:meng_s_application1/presentation/filter_screen/binding/filter_binding.dart';
import 'package:meng_s_application1/presentation/ship_to_screen/ship_to_screen.dart';
import 'package:meng_s_application1/presentation/ship_to_screen/binding/ship_to_binding.dart';
import 'package:meng_s_application1/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:meng_s_application1/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:meng_s_application1/presentation/choose_credit_or_debit_card_screen/choose_credit_or_debit_card_screen.dart';
import 'package:meng_s_application1/presentation/choose_credit_or_debit_card_screen/binding/choose_credit_or_debit_card_binding.dart';
import 'package:meng_s_application1/presentation/success_screen/success_screen.dart';
import 'package:meng_s_application1/presentation/success_screen/binding/success_binding.dart';
import 'package:meng_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:meng_s_application1/presentation/profile_screen/binding/profile_binding.dart';
import 'package:meng_s_application1/presentation/change_password_screen/change_password_screen.dart';
import 'package:meng_s_application1/presentation/change_password_screen/binding/change_password_binding.dart';
import 'package:meng_s_application1/presentation/order_screen/order_screen.dart';
import 'package:meng_s_application1/presentation/order_screen/binding/order_binding.dart';
import 'package:meng_s_application1/presentation/order_details_screen/order_details_screen.dart';
import 'package:meng_s_application1/presentation/order_details_screen/binding/order_details_binding.dart';
import 'package:meng_s_application1/presentation/add_address_screen/add_address_screen.dart';
import 'package:meng_s_application1/presentation/add_address_screen/binding/add_address_binding.dart';
import 'package:meng_s_application1/presentation/address_screen/address_screen.dart';
import 'package:meng_s_application1/presentation/address_screen/binding/address_binding.dart';
import 'package:meng_s_application1/presentation/add_payment_screen/add_payment_screen.dart';
import 'package:meng_s_application1/presentation/add_payment_screen/binding/add_payment_binding.dart';
import 'package:meng_s_application1/presentation/credit_card_and_debit_screen/credit_card_and_debit_screen.dart';
import 'package:meng_s_application1/presentation/credit_card_and_debit_screen/binding/credit_card_and_debit_binding.dart';
import 'package:meng_s_application1/presentation/add_card_screen/add_card_screen.dart';
import 'package:meng_s_application1/presentation/add_card_screen/binding/add_card_binding.dart';
import 'package:meng_s_application1/presentation/lailyfa_febrina_card_screen/lailyfa_febrina_card_screen.dart';
import 'package:meng_s_application1/presentation/lailyfa_febrina_card_screen/binding/lailyfa_febrina_card_binding.dart';
import 'package:meng_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:meng_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String registerFormScreen = '/register_form_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String offerScreen = '/offer_screen';

  static const String favoriteProductScreen = '/favorite_product_screen';

  static const String productDetailScreen = '/product_detail_screen';

  static const String reviewProductScreen = '/review_product_screen';

  static const String writeReviewFillScreen = '/write_review_fill_screen';

  static const String notificationOneScreen = '/notification_one_screen';

  static const String notificationOfferScreen = '/notification_offer_screen';

  static const String notificationFeedScreen = '/notification_feed_screen';

  static const String notificationScreen = '/notification_screen';

  static const String explorePage = '/explore_page';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String searchResultOneScreen = '/search_result_one_screen';

  static const String listCategoryScreen = '/list_category_screen';

  static const String sortByScreen = '/sort_by_screen';

  static const String filterScreen = '/filter_screen';

  static const String cartPage = '/cart_page';

  static const String shipToScreen = '/ship_to_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String chooseCreditOrDebitCardScreen =
      '/choose_credit_or_debit_card_screen';

  static const String successScreen = '/success_screen';

  static const String offerScreenOnePage = '/offer_screen_one_page';

  static const String accountPage = '/account_page';

  static const String profileScreen = '/profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String orderScreen = '/order_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String addressScreen = '/address_screen';

  static const String addPaymentScreen = '/add_payment_screen';

  static const String creditCardAndDebitScreen =
      '/credit_card_and_debit_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String lailyfaFebrinaCardScreen = '/lailyfa_febrina_card_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registerFormScreen,
      page: () => RegisterFormScreen(),
      bindings: [
        RegisterFormBinding(),
      ],
    ),
    GetPage(
      name: dashboardContainerScreen,
      page: () => DashboardContainerScreen(),
      bindings: [
        DashboardContainerBinding(),
      ],
    ),
    GetPage(
      name: offerScreen,
      page: () => OfferScreen(),
      bindings: [
        OfferBinding(),
      ],
    ),
    GetPage(
      name: favoriteProductScreen,
      page: () => FavoriteProductScreen(),
      bindings: [
        FavoriteProductBinding(),
      ],
    ),
    GetPage(
      name: productDetailScreen,
      page: () => ProductDetailScreen(),
      bindings: [
        ProductDetailBinding(),
      ],
    ),
    GetPage(
      name: reviewProductScreen,
      page: () => ReviewProductScreen(),
      bindings: [
        ReviewProductBinding(),
      ],
    ),
    GetPage(
      name: writeReviewFillScreen,
      page: () => WriteReviewFillScreen(),
      bindings: [
        WriteReviewFillBinding(),
      ],
    ),
    GetPage(
      name: notificationOneScreen,
      page: () => NotificationOneScreen(),
      bindings: [
        NotificationOneBinding(),
      ],
    ),
    GetPage(
      name: notificationOfferScreen,
      page: () => NotificationOfferScreen(),
      bindings: [
        NotificationOfferBinding(),
      ],
    ),
    GetPage(
      name: notificationFeedScreen,
      page: () => NotificationFeedScreen(),
      bindings: [
        NotificationFeedBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: searchResultOneScreen,
      page: () => SearchResultOneScreen(),
      bindings: [
        SearchResultOneBinding(),
      ],
    ),
    GetPage(
      name: listCategoryScreen,
      page: () => ListCategoryScreen(),
      bindings: [
        ListCategoryBinding(),
      ],
    ),
    GetPage(
      name: sortByScreen,
      page: () => SortByScreen(),
      bindings: [
        SortByBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: shipToScreen,
      page: () => ShipToScreen(),
      bindings: [
        ShipToBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: chooseCreditOrDebitCardScreen,
      page: () => ChooseCreditOrDebitCardScreen(),
      bindings: [
        ChooseCreditOrDebitCardBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: changePasswordScreen,
      page: () => ChangePasswordScreen(),
      bindings: [
        ChangePasswordBinding(),
      ],
    ),
    GetPage(
      name: orderScreen,
      page: () => OrderScreen(),
      bindings: [
        OrderBinding(),
      ],
    ),
    GetPage(
      name: orderDetailsScreen,
      page: () => OrderDetailsScreen(),
      bindings: [
        OrderDetailsBinding(),
      ],
    ),
    GetPage(
      name: addAddressScreen,
      page: () => AddAddressScreen(),
      bindings: [
        AddAddressBinding(),
      ],
    ),
    GetPage(
      name: addressScreen,
      page: () => AddressScreen(),
      bindings: [
        AddressBinding(),
      ],
    ),
    GetPage(
      name: addPaymentScreen,
      page: () => AddPaymentScreen(),
      bindings: [
        AddPaymentBinding(),
      ],
    ),
    GetPage(
      name: creditCardAndDebitScreen,
      page: () => CreditCardAndDebitScreen(),
      bindings: [
        CreditCardAndDebitBinding(),
      ],
    ),
    GetPage(
      name: addCardScreen,
      page: () => AddCardScreen(),
      bindings: [
        AddCardBinding(),
      ],
    ),
    GetPage(
      name: lailyfaFebrinaCardScreen,
      page: () => LailyfaFebrinaCardScreen(),
      bindings: [
        LailyfaFebrinaCardBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
