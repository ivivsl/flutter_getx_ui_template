import 'package:get/get.dart';
import 'gridnikeairmaxreact_item_model.dart';

class FavoriteProductModel {
  Rx<List<GridnikeairmaxreactItemModel>> gridnikeairmaxreactItemList =
      Rx(List.generate(4, (index) => GridnikeairmaxreactItemModel()));
}
