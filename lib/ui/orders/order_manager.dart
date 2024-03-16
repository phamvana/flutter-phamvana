import '../../models/cart_item.dart';
import '../../models/order_item.dart';

class OrdersManager {
  final List<OrderItem> _orders = [
    OrderItem(
      id: '01',
      amount: 59.98,
      products: [
        CartItem(
          id: '01',
          title: 'Áo đỏ',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
          quantity: 2,
          price: 29.99,
        )
      ],
      dateTime: DateTime.now(),
    )
  ];

  int get orderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }
}
