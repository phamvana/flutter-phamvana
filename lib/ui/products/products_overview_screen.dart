/*
 * Định nghĩa tổng quan sản phẩm
 */
import 'package:flutter/material.dart';
import 'products_grid.dart';

enum FilterOptions { favorites, all }

class ProductOverviewScreen extends StatefulWidget {
  const ProductOverviewScreen({super.key});

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pham Van A Shop'),
        //Hiệu chỉnh actions
        actions: <Widget>[
          ProductsFilterMenu(
            onFilterSelected: (filter) {
              setState(() {
                if (filter == FilterOptions.favorites) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
            },
          ),
          ShoppingCartButton(
            onPressed: () {
              print('Go to cart screen');
            },
          ),
        ],
      ),
      body: ProductsGird(
        showFavorites: _showOnlyFavorites,
      ),
    );
  }
}

/*
 * Lớp ProductsFilterMenu
 */
class ProductsFilterMenu extends StatelessWidget {
  const ProductsFilterMenu({
    super.key,
    this.onFilterSelected,
  });
  final void Function(FilterOptions selectedValue)? onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: onFilterSelected,
      icon: const Icon(
        Icons.more_vert, // icon ba chấm ngang
      ),
      itemBuilder: (ctc) => [
        const PopupMenuItem(
          value: FilterOptions.favorites,
          child: Text('Only Favorites'),
        ),
        const PopupMenuItem(
          value: FilterOptions.all,
          child: Text('Show All'),
        )
      ],
    );
  }
}

/*
 * ShoppingCartButton
 */
class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.shopping_cart,
        ));
  }
}
