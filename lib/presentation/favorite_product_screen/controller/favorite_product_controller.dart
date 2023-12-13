import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/favorite_product_screen/models/favorite_product_model.dart';

class FavoriteProductController extends GetxController {
  Rx<FavoriteProductModel> favoriteProductModelObj = FavoriteProductModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
