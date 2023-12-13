import 'package:get/get.dart';
import 'slider_item_model.dart';
import 'sizes_item_model.dart';
import 'recomended_item_model.dart';

class ProductDetailModel {
  Rx<List<SliderItemModel>> sliderItemList =
      Rx(List.generate(1, (index) => SliderItemModel()));

  Rx<List<SizesItemModel>> sizesItemList =
      Rx(List.generate(6, (index) => SizesItemModel()));

  Rx<List<RecomendedItemModel>> recomendedItemList =
      Rx(List.generate(3, (index) => RecomendedItemModel()));
}
