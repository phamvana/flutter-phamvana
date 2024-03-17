/*
 * Định nghĩa trng hiển thị các sản phẩm người dùng
 * Hiệu chỉnh
 */

import 'package:flutter/material.dart';

import 'user_product_list_tile.dart';
import 'product_manager.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';
  const UserProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sản phẩm của bạn'),
        //Bắt sự kiện cho nút add
        actions: <Widget>[
          AddUserProductButton(
            onPressed: () {
              print('go to edit product screen');
            },
          ),
        ],
      ),
      body: const UserProductList(),
    );
  }
}

/*
 * UserProductList
 * Hiệu chỉnh
 */
class UserProductList extends StatelessWidget {
  const UserProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final productsManages = ProductsManager();
    return ListView.builder(
      itemCount: productsManages.itemCount,
      itemBuilder: (ctx, i) => Column(
        children: [
          UserProductListTile(
            productsManages.items[i],
          ),
          const Divider(),
        ],
      ),
    );
  }
}

/*
 * AddUserProductButton
 * Hiệu chỉnh 
 * Phạm Văn Á
 * 2/3/24
//  */
class AddUserProductButton extends StatelessWidget {
  const AddUserProductButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.add),
    );
  }
}
