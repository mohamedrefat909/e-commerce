import 'package:e_commerce/models/product_model.dart';
import 'package:e_commerce/providers/products_provider.dart';
import 'package:e_commerce/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/product_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late Future loadData;
  @override
  void initState() {
    loadData = ref.read(productsProvider.notifier).getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final listofProducts=ref.watch(productsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce'),
      ),
      body: FutureBuilder(
        future: loadData,
        builder: (ctx, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            const Center(child: CircularProgressIndicator(),);
          }
          if(snapshot.hasError){
            return const Center(child: Text('Has Internet Connection Error'),);
          }
          return  ProductWidget(products:listofProducts,);
        },
      ),
    );
  }
}
