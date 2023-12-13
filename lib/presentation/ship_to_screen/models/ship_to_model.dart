import 'package:get/get.dart';
import 'ship_to_item_model.dart';

class ShipToModel {
  Rx<List<ShipToItemModel>> shipToItemList =
      Rx(List.generate(3, (index) => ShipToItemModel()));
}
