import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/list_category_screen/models/list_category_model.dart';

class ListCategoryController extends GetxController {
  Rx<ListCategoryModel> listCategoryModelObj = ListCategoryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
