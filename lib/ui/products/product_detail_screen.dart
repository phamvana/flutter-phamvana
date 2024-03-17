/*
 * Định nghĩa lớp thông tin chi tiết sản phẩm
 */
import 'package:flutter/material.dart';

import '../../models/product.dart';

/*
 * Lớp chi tiết sản phẩm
 */
class ProductDetailSreen extends StatelessWidget {
  static const routeName = '/product-detail';
  const ProductDetailSreen(this.product, {super.key});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: SingleChildScrollView(
        /**
         * SingleChildScrollView cung cập một vùng chứa trong đó
         * các widget con có thể cuộn được
         */
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(product.imageUrl, fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '\$${product.price}',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                product.description,
                textAlign: TextAlign.center,
                softWrap: true,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
