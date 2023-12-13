import 'package:get/get.dart';
import 'order_details_item_model.dart';

class OrderDetailsModel {
  Rx<List<OrderDetailsItemModel>> orderDetailsItemList =
      Rx(List.generate(2, (index) => OrderDetailsItemModel()));
}
