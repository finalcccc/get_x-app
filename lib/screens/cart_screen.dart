import 'package:flutter/material.dart';

import '../widgets/cart_products.dart';
import '../widgets/cart_total.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CartProducts(),
          CartTotal(),
        ],
      ),
    );
  }
}
