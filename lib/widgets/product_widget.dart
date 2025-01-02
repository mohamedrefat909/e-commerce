import 'package:flutter/material.dart';
import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/widgets/product_item.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

class ProductWidget extends StatelessWidget {
  final List<Widget> products =const  [
     ProductItem(
      product: Product(
          category: 'men\'s clothing',
          description:
              'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday',
          id: '1',
          image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          price: '109.95',
          rating: {
            'rate': 3.9,
            'count': 90,
          },
          title: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops'),
    ),
     ProductItem(
      product: Product(
          category: 'men\'s clothing',
          description:
              'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday',
          id: '1',
          image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          price: '109.95',
          rating: {
            'rate': 3.9,
            'count': 90,
          },
          title: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops'),
    ),
     ProductItem(
      product: Product(
          category: 'men\'s clothing',
          description:
              'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday',
          id: '1',
          image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          price: '109.95',
          rating: {
            'rate': 3.9,
            'count': 90,
          },
          title: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops'),
    ),
     ProductItem(
      product: Product(
          category: 'men\'s clothing',
          description:
              'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday',
          id: '1',
          image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
          price: '109.95',
          rating: {
            'rate': 3.9,
            'count': 90,
          },
          title: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops'),
    ),
  ];
  const ProductWidget({super.key});
  @override
  Widget build(BuildContext context) {
    //using the package to adapt the grid view to height of the widget
    return DynamicHeightGridView(
        builder: (ctx, index) {
          return products[index];
        }, itemCount: products.length, crossAxisCount: 2);
  }
}
