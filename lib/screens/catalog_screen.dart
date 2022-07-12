import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_app/screens/cart_screen.dart';

import '../widgets/catalog_products.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const CatalogProducts(),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const CartScreen());
                },
                child: const Text('Go to Cart'))
          ],
        ),
      ),
    );
  }
}
