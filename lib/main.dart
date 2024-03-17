import 'package:flutter/material.dart';
import 'package:phamvana/ui/cart/cart_screen.dart';
// import 'package:phamvana/ui/cart/cart_screen.dart';
import 'package:phamvana/ui/orders/orders_screen.dart';
import 'package:phamvana/ui/products/product_detail_screen.dart';
import 'package:phamvana/ui/products/product_manager.dart';
import 'package:phamvana/ui/products/user_products_sreen.dart';
// import 'package:phamvana/ui/products/products_overview_screen.dart';
// import 'ui/products/product_detail_screen.dart';
// import 'ui/products/product_manager.dart';
// import 'ui/products/user_products_sreen.dart';

//Chương trình chính được chạy ở hàm main
void main() {
  runApp(const AppPhamVanA());
}

// Định nghĩa lớp AppPhamVanA
class AppPhamVanA extends StatelessWidget {
  const AppPhamVanA({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.purple,
      secondary: Colors.deepOrange,
      background: Colors.white,
      surfaceTint: Colors.grey[200],
    );
    final themeData = ThemeData(
      fontFamily: 'Lato',
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: 4,
        shadowColor: colorScheme.shadow,
      ),
      // Thêm định nghĩa DialogTheme vào ThemeData
      dialogTheme: DialogTheme(
        titleTextStyle: TextStyle(
          color: colorScheme.onBackground,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        contentTextStyle: TextStyle(
          color: colorScheme.onBackground,
          fontSize: 20,
        ),
      ),
    );
    return MaterialApp(
      title: 'Phạm Văn Á Project',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const ProductsOverviewScreen(),
      // thuộc tính routes thường dùng khai báo
      //các route không tham số.
      routes: {
        CartScreen.routeName: (ctx) => const SafeArea(
              child: CartScreen(),
            ),
        OrdersScreen.routeName: (cxt) => const SafeArea(
              child: OrdersScreen(),
            ),
        UserProductsScreen.routeName: (cxt) => const SafeArea(
              child: UserProductsScreen(),
            ),
      },
      // onGenerateRoute sẽ được gọi khi không tìm thấy route yêu cầu
      // trong thuộc tính routes ở trên. Thường dùng để truyền tham số
      // hoặc tùy biến hiệu ứng chuyển trang.
      onGenerateRoute: (settings) {
        if (settings.name == ProductDetailSreen.routeName) {
          final productId = settings.arguments as String;
          return MaterialPageRoute(
            settings: settings,
            builder: (ctx) {
              return SafeArea(
                child: ProductDetailSreen(
                  ProductsManager().findById(productId)!,
                ),
              );
            },
          );
        }

        return null;
      },
    );
  }
}
      /*
       * Đặt ProductDetailScreen làm trang chủ
       * sử dụng SafeArea để thay thế cho Scaffold
       * SafeAre cung cấp cho widget con padding đủ để tránh các 
       * thành phần giao diện của hệ điều hành
       * 2/3/2024 Hiệu chỉnh trang tổng quan các sản phẩm
      */
      // home: const SafeArea(
      //   child: OrdersScreen(),
        // child: CartScreen(),
        // child: UserProductsScreen(),
        // child: ProductOverviewScreen(),
      
      // SafeArea(
      //   child: ProductDetailSreen(
      //     ProductsManager().items[0],
      //   ),
      // ),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Phạm Văn Á'),
      //   ),
      //   body: const Center(
      //     child: Text('Xin chào'),
      //   ),
      // ),

