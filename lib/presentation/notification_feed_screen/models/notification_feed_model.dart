import 'package:get/get.dart';
import 'listnewproduct_item_model.dart';

class NotificationFeedModel {
  Rx<List<ListnewproductItemModel>> listnewproductItemList =
      Rx(List.generate(3, (index) => ListnewproductItemModel()));
}
