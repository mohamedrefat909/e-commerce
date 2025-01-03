import 'dart:convert';

import 'package:e_commerce/models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;


final productsProvider =
    StateNotifierProvider<ProductsStateNotifier, List<Product>>((ref) {
  return ProductsStateNotifier();
});

class ProductsStateNotifier extends StateNotifier<List<Product>> {
  ProductsStateNotifier() : super([]);
  final List<Product> products = [];
  Future<bool> getProducts() async {
    final url = Uri.parse('https://fakestoreapi.com/products');
    try {
      final response = await http.get(url);
      final convertedData = json.decode(response.body);
      for (final item in convertedData) {
        products.add(
          Product(
              category: item['category'],
              description: item['description'],
              id: item['id'].toString(),
              image: item['image'],
              price: item['price'].toString(),
              rating: item['rating'],
              title: item['title']),
        );
      }
    } catch (e) {
      Future.error(e);
    }
    state=products;
    return true;
  }
  
}
