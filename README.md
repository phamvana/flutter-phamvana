# phamvana

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

- Trang 12
- 10/3/2024 - Thực hiện lab2
# LAB2
## Bước 1: Xây dựng trang giỏ hàng

- 12/3/2024 - Trang 5 lab2 - Dialog
========

- 16/3/24 - Tiếp tục thực hiện 
- Hàm showDialog(context, builder): hiển thị một hộp thoại phía trên nội dung hiện thời. Tham 
số builder là hàm tạo widget Dialog. Hai dạng widget Dialog phổ biến: AlertDialog và 
- SimpleDialog. Các thuộc tính quan trọng của một AlertDialog là title: tựa đề hội thoại, content: 
nội dung chính hội thoại và actions: dòng các nút tương tác với hội thoại.
Hiệu chỉnh ThemeData của MaterialApp trong lib/main.dart để tùy chỉnh theme cho dialog
========
Định nghĩa widget CartItemCard hiển thị thông tin một mặt hàng trong giỏ hàng 
(lib/ui/cart/cart_item_card.dart)

Widget Dismissible là widget có thể được loại bỏ (dismiss) bằng cách vuốt theo hướng chỉ định. Một số thuộc tính quan trọng của Dismissable: key thuộc tính đùng định danh widget; 
direction chỉ định hướng vuốt widget (DismissDirection); background widget nền cho widget con; 
confirmDismiss hàm được gọi để xác nhận loại bỏ, trả về true widget sẽ được loại bỏ, ngược lại quay về vị trí cũ; onDismissed hàm được gọi sau khi widget đã được loại bỏ.

Widget FittedBox co giãn và bố trí con của nó theo tiêu chí được chỉ định bởi thuộc tính fit (mặc định là BoxFit.contain). Hiệu chỉnh CartItemCard.

Định nghĩa trang hiển thị thông tin một giỏ hàng (lib/ui/cart/cart_screen.dart):
Hiệu chỉnh lib/main.dart kiểm tra trang hiển thị giỏ hàng

## Bước 2: Xây dựng trang hiển thị các đặt hàng

- Định nghĩa lớp OrderItem miêu tả thông tin một đặt hàng (lib/models/order_item.dart)

- Định nghĩa lớp OrderManager quản lý các đặt hàng (lib/ui/orders/order_manager.dart)
- Định nghĩa widget OrderItemCard hiển thị thông tin một đặt hàng 
(lib/ui/orders/order_item_card.dart):

- Định nghĩa trang hiển thị thông tin các đặt hàng (lib/ui/orders/orders_screen.dart)
- Hiệu chỉnh lib/main.dart kiểm tra trang hiển thị các đặt hàng.