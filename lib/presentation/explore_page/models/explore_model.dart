import 'package:get/get.dart';
import 'explore_item_model.dart';
import 'explore1_item_model.dart';

class ExploreModel {
  Rx<List<ExploreItemModel>> exploreItemList =
      Rx(List.generate(6, (index) => ExploreItemModel()));

  Rx<List<Explore1ItemModel>> explore1ItemList =
      Rx(List.generate(2, (index) => Explore1ItemModel()));
}
