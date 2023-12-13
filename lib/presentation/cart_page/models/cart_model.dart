import 'package:get/get.dart';
import 'cart_item_model.dart';

class CartModel {
  Rx<List<CartItemModel>> cartItemList =
      Rx(List.generate(2, (index) => CartItemModel()));
}
