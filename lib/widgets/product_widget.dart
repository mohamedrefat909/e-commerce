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
    return products.isNotEmpty //this check if if list empty or not 
        ? DynamicHeightGridView(
            builder: (ctx, index) {
              return ProductItem(product: products[index]);//this go through list i passed and convert it to to Product Item  to dispaly it in gird in screen

            },
            itemCount: products.length,
            crossAxisCount: 2)
        : const Center(
            child: Text('There is no products'),//if the list is empty will display this text
          );
  }
}
