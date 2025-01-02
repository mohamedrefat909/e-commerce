import 'package:flutter/material.dart';
import 'package:e_commerce/models/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({required this.product, super.key});
  final Product product; //recive on product to display content in item
  @override
  Widget build(BuildContext context) {
    return Stack(
      // add stack to add on it favorite and add button
      children: [
        SizedBox(
          width: 210,
          child: Card(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(
                  color: Color.fromARGB(255, 1, 65, 135),
                  style: BorderStyle.solid,
                  width: 3,
                )),
            color: Colors.white,
            elevation: 0,
            clipBehavior: Clip.hardEdge,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  product.image,
                  width: 170,
                  height: 170,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    //add this texts in another column give them padding
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 11, 6, 84),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 11, 6, 84),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            product.price,
                            style: const TextStyle(
                              fontSize: 19,
                              color: Color.fromARGB(255, 11, 6, 84),
                            ),
                          ),
                          const SizedBox(width: 20,),
                          const Text(
                            '2000 EGP',
                            style: TextStyle(
                              decorationColor:
                                  Color.fromARGB(255, 64, 135, 181),
                              decoration: TextDecoration.lineThrough,
                              fontSize: 14,
                              color: Color.fromARGB(255, 64, 135, 181),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'Review (${product.rating['rate']})',
                            style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 11, 6, 84),
                            ),
                          ),
                          const Icon(
                            Icons.star_rounded,
                            color: Color.fromARGB(255, 254, 220, 3),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // adding positioned to favorite and add buttons to be on card widget
        //this for favorite button
        Positioned(
          right: 12,
          top: 10,
          child: Container( // adding container to it to change the background color
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Color.fromARGB(255, 1, 65, 135),
              ),
            ),
          ),
        ),
        //this is for add button
        Positioned(
          right: 12,
          bottom: 6,
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 64, 135),
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
