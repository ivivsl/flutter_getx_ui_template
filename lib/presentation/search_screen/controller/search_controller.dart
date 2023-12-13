import 'package:meng_s_application1/core/app_export.dart';
import 'package:meng_s_application1/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';

class SearchingController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
