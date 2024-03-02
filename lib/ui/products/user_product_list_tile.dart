/*
 * Định nghĩa widget UserProductListTile hiển thị thông tin
 * một sản phẩm cùng với các thao tác sửa, xóa
 */

import 'package:flutter/material.dart';

import '../../models/product.dart';

class UserProductListTile extends StatelessWidget {
  final Product product;
  const UserProductListTile(
    this.product, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          product.imageUrl,
        ),
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: <Widget>[
            //Bắt sự kiện cho nút edit
            EditUserProductButton(
              onPressed: () {
                print('Đi đến edit product screen');
              },
            ),
            //Bắt sự kiện cho nút delete
            DeleteUserProductBotton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Xoa san pham',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
 *  Lớp DeleteUserProductBotto
 */
class DeleteUserProductBotton extends StatelessWidget {
  final void Function()? onPressed;
  const DeleteUserProductBotton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.delete),
      color: Theme.of(context).colorScheme.error,
    );
  }
}

/*
  * EditUserProductButton
  */
class EditUserProductButton extends StatelessWidget {
  final void Function()? onPressed;
  const EditUserProductButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.edit),
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
