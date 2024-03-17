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

# 10/3/2024 - Thực hiện lab2

## Bước 1: Xây dựng trang giỏ hàng

- 12/3/2024 - Trang 5 lab2 - Dialog

- 16/3/24 - Tiếp tục thực hiện

- Hàm showDialog(context, builder): hiển thị một hộp thoại phía trên nội dung hiện thời. Tham số builder là hàm tạo widget Dialog. Hai dạng widget Dialog phổ biến: AlertDialog và 
- SimpleDialog. Các thuộc tính quan trọng của một AlertDialog là title: tựa đề hội thoại, content: 
nội dung chính hội thoại và actions: dòng các nút tương tác với hội thoại.
Hiệu chỉnh ThemeData của MaterialApp trong lib/main.dart để tùy chỉnh theme cho dialog

- Định nghĩa widget CartItemCard hiển thị thông tin một mặt hàng trong giỏ hàng 
(lib/ui/cart/cart_item_card.dart)

- Widget Dismissible là widget có thể được loại bỏ (dismiss) bằng cách vuốt theo hướng chỉ định. Một số thuộc tính quan trọng của Dismissable: key thuộc tính đùng định danh widget; direction chỉ định hướng vuốt widget (DismissDirection); background widget nền cho widget con; confirmDismiss hàm được gọi để xác nhận loại bỏ, trả về true widget sẽ được loại bỏ, ngược lại quay về vị trí cũ; onDismissed hàm được gọi sau khi widget đã được loại bỏ.

- Widget FittedBox co giãn và bố trí con của nó theo tiêu chí được chỉ định bởi thuộc tính fit (mặc định là BoxFit.contain). Hiệu chỉnh CartItemCard.

- Định nghĩa trang hiển thị thông tin một giỏ hàng (lib/ui/cart/cart_screen.dart):
- Hiệu chỉnh lib/main.dart kiểm tra trang hiển thị giỏ hàng

## Bước 2: Xây dựng trang hiển thị các đặt hàng

- Định nghĩa lớp OrderItem miêu tả thông tin một đặt hàng (lib/models/order_item.dart)

- Định nghĩa lớp OrderManager quản lý các đặt hàng (lib/ui/orders/order_manager.dart)
- Định nghĩa widget OrderItemCard hiển thị thông tin một đặt hàng 
(lib/ui/orders/order_item_card.dart):

- Định nghĩa trang hiển thị thông tin các đặt hàng (lib/ui/orders/orders_screen.dart)
- Hiệu chỉnh lib/main.dart kiểm tra trang hiển thị các đặt hàng.

## Bước 3: Định tuyến theo tên

- Tạo tập tin lib/ui/screens.dart là tập tin import tập trung của thư mục lib/ui
- Hiệu chỉnh tập tin lib/main.dart, thay vì import từng tập tin *_screen riêng lẻ, chỉ cần import 
tập tin lib/ui/screens.dart
- Hiệu chỉnh lib/main.dart, khai báo các trang của ứng dụng
- Trong đoạn mã nguồn trên, phương thức findById() định nghĩa trong lớp ProductsManager 
(lib/ui/products/products_manager.dart) như sau

- Định nghĩa widget AppDrawer thực hiện điều hướng trong ứng dụng 
(lib/ui/shared/app_drawer.dart)

- Thêm drawer vào các trang, điều chỉnh điều hướng giữa các trang

## Bước 4: Thêm thông tin số sản phẩm trong giỏ hàng

- Định nghĩa widget TopRightBadge (lib/ui/products/top_right_badge.dart) nhận vào một widget 
con và một giá trị. Giá trị sẽ được hiển thị ở góc trên bên phải của widget con:
- Hiệu chỉnh trang tổng quan các sản phẩm (lib/ui/products/products_overview_screen.dart) bao widget IconButton với widget TopRightBadge