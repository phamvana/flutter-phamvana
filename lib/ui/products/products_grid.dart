// import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'product_grid_tile.dart';
import 'product_manager.dart';
/*
 * Định nghĩa widget ProductsGird hiển thị sản phẩm dạng lưới
 * Phạm Văn Á
 * 2/3/2024 
 */

class ProductsGird extends StatelessWidget {
  final bool showFavorites;
  const ProductsGird({
    super.key,
    required this.showFavorites,
  });

  @override
  Widget build(BuildContext context) {
    // hàm buid của ProductsGird
    final productsManager = ProductsManager();
    final products =
        showFavorites ? productsManager.favoriteItems : productsManager.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductGridTile(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
