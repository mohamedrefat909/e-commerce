import 'dart:convert';

import 'package:e_commerce/models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

//i use riverpod package to send http requests and display products 
final productsProvider =
    StateNotifierProvider<ProductsStateNotifier, List<Product>>((ref) {
  return ProductsStateNotifier();
});

class ProductsStateNotifier extends StateNotifier<List<Product>> {
  ProductsStateNotifier() : super([]);
  final List<Product> products = []; //to add to it products after convert it from database 
  //this function i use it t send http request and get data 
  //i make it Future to us it in Future builder 
  Future<bool> getProducts() async {
    final url = Uri.parse('https://fakestoreapi.com/products');
    try {
      final response = await http.get(url);//this send http request to get data 
      final convertedData = json.decode(response.body); //convert json file 
      for (final item in convertedData) {
        //go through list of map i get it from data base and convert it to product class instance
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
    state=products; // i update the state to  get it in any code with read or watch of ref
    return true;
  }
  
}
