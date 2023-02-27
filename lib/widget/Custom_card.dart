import 'package:flutter/material.dart';
import '../models/get_all_products.dart';
class CustomCard extends StatelessWidget {
   CustomCard(
  
  );
// ProductsModels Products;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 150,
          child: Card(
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Hand bag"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(r"$200"),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.favorite),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 70,
          bottom: 50,
          child: Container(
            width: 100,
            height: 100,
            child: Image.network(
                "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixl"),
          ),
        )
      ],
    );
  }
}
