import 'package:get/get.dart';
import 'address_item_model.dart';

class AddressModel {
  Rx<List<AddressItemModel>> addressItemList =
      Rx(List.generate(2, (index) => AddressItemModel()));
}
