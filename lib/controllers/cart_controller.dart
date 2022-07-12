import 'package:get/get.dart';
import 'package:get_x_app/models/product_model.dart';

class CartController extends GetxController {
  //add a dict to store the product in the cart
  final _products = {}.obs;
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar('Product Add', 'You have add  ${product.name} to the cart',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 1));
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get products => _products;
  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();
  get total => _products.entries
      .map((product) => product.key.price.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
