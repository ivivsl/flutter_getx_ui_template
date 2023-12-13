import 'package:get/get.dart';
import 'listoffer_item_model.dart';

class NotificationOfferModel {
  Rx<List<ListofferItemModel>> listofferItemList =
      Rx(List.generate(3, (index) => ListofferItemModel()));
}
