import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/search_result_one_screen/models/search_result_one_model.dart';
import 'package:flutter/material.dart';

class SearchResultOneController extends GetxController {
  TextEditingController searchformController = TextEditingController();

  Rx<SearchResultOneModel> searchResultOneModelObj = SearchResultOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchformController.dispose();
  }
}
