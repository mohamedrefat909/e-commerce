import 'package:flutter/material.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/widgets/product_item.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({required this.products, super.key});
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    //using the package to adapt the grid view to height of the widget
    return products.isNotEmpty
        ? DynamicHeightGridView(
            builder: (ctx, index) {
              return ProductItem(product: products[index]);
            },
            itemCount: products.length,
            crossAxisCount: 2)
        : const Center(
            child: Text('There is no products'),
          );
  }
}
