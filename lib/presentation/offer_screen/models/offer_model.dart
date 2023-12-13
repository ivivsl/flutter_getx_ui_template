import 'package:get/get.dart';
import 'offer_screen_item_model.dart';

class OfferModel {
  Rx<List<OfferScreenItemModel>> offerScreenItemList =
      Rx(List.generate(4, (index) => OfferScreenItemModel()));
}
