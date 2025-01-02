import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/product_item.dart';
class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce'),
      ),
      body: ProductItem(),
    );
  }
}