import 'package:get/get.dart';
import 'order_item_model.dart';

class OrderModel {
  Rx<List<OrderItemModel>> orderItemList =
      Rx(List.generate(3, (index) => OrderItemModel()));
}
