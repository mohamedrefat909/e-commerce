import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce'),
      ),
      body:const  ProductWidget(),
    );
  }
}
