/*
 * Định nghĩa lớp CartManager quản lý các mặt hàng trong giỏ hàng
 * 13/3/2024 - Cập nhật trang 3 lab2
 */

import '../../models/cart_item.dart';

class CartManager{
  final Map<String, CartItem> _items = {
    'p1':CartItem(
      id:'c1',
      title: 'Áo đỏ',
      imageUrl: 'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      price: 29.99,
      quantity: 2,
    ),
  };

  /*
   * Biến điếm số phần tử của items
   */
  int get productCount{
    return _items.length;
  }

  /*
   * Danh sách sản phẩm
   */
  List<CartItem> get products{
    return _items.values.toList();
  }

  /*
   * Iterable
   * Tìm hiểu thêm phần Iterable 
   * 10/3/2024
   */
  Iterable<MapEntry<String, CartItem>> get productEntries{
    return {..._items}.entries;
  }

  /*
   * Tạo biến tổng giá trị giỏ hàng
   * 
   */
  double get totalAmount{
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
     });
     return total;
  }
}
