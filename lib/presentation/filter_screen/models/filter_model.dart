import 'package:get/get.dart';
import 'buyingformate_item_model.dart';
import 'itemlocation_item_model.dart';
import 'showonly_item_model.dart';

class FilterModel {
  Rx<List<BuyingformateItemModel>> buyingformateItemList =
      Rx(List.generate(5, (index) => BuyingformateItemModel()));

  Rx<List<ItemlocationItemModel>> itemlocationItemList =
      Rx(List.generate(4, (index) => ItemlocationItemModel()));

  Rx<List<ShowonlyItemModel>> showonlyItemList =
      Rx(List.generate(11, (index) => ShowonlyItemModel()));
}
