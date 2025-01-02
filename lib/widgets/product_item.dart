import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget{
  const ProductItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network('https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg'),
        ],
      ),
    );
  }
}