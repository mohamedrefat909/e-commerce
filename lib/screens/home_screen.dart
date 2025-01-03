import 'package:e_commerce/providers/products_provider.dart';
import 'package:e_commerce/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late Future loadData; // i define it and make it late beacuse it will be initialzed before i need it 
  @override
  void initState() {
    loadData = ref.read(productsProvider.notifier).getProducts(); //to load data from database before build method 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final listofProducts=ref.watch(productsProvider); //to get list of products from riverpod
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
          return  ProductWidget(products:listofProducts,);//i send list of products to Product widget
        },
      ),
    );
  }
}
