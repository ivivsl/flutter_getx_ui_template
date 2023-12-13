import 'package:get/get.dart';
import 'slidervolume_item_model.dart';

class ChooseCreditOrDebitCardModel {
  Rx<List<SlidervolumeItemModel>> slidervolumeItemList =
      Rx(List.generate(1, (index) => SlidervolumeItemModel()));
}
