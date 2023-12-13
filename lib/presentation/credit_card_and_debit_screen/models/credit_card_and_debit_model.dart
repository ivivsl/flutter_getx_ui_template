import 'package:get/get.dart';
import 'listvolume_item_model.dart';

class CreditCardAndDebitModel {
  Rx<List<ListvolumeItemModel>> listvolumeItemList =
      Rx(List.generate(2, (index) => ListvolumeItemModel()));
}
