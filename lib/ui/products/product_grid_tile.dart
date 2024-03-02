import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'product_detail_screen.dart';

/*
 * Định nghĩa widget ProductGridTile trình bày thông tin một sản phẩm
 */
//lớp ProductGridTile
class ProductGridTile extends StatelessWidget {
  const ProductGridTile(
    //Phương thức xây dựng
    this.product, {
    super.key,
  });
  final Product product; //Đặt biến product có kiểu là Product
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10), //bo góc
      child: GridTile(
        footer: ProductGridFooter(
          product: product,
          onFavoritePressed: () {
            print('Toggle a favorite product');
          },
          onAddToCartPressed: () {
            print('Add item to card');
          },
        ),
        child: GestureDetector(
          onTap: () {
            //Chuyển đến ProductDetailSreen
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => ProductDetailSreen(product),
              ),
            );
            print(
                'Go to product detail screen | Chuyen den ProductDetailSreen - Pham Van A');
          },
          child: Image.network(
            product.imageUrl, // Lấy ảnh từ product
            fit: BoxFit.cover, // định dạng ảnh
          ),
        ),
      ),
    );
  }
}

//Lớp ProductGridFooter
class ProductGridFooter extends StatelessWidget {
  const ProductGridFooter({
    // Hàm xây dựng
    super.key,
    required this.product, //tham chiếu đến biến product
    this.onFavoritePressed,
    this.onAddToCartPressed,
  });

  final Product product;
  final void Function()? onFavoritePressed;
  final void Function()? onAddToCartPressed;
  @override
  Widget build(BuildContext context) {
    return GridTileBar(
      backgroundColor: Colors.black87,
      leading: IconButton(
        icon: Icon(
          product.isFavorite ? Icons.favorite : Icons.favorite_border,
        ),
        color: Theme.of(context).colorScheme.secondary,
        onPressed: onFavoritePressed,
      ),
      title: Text(
        product.title,
        textAlign: TextAlign.center,
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.shopping_cart,
        ),
        onPressed: onAddToCartPressed,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
