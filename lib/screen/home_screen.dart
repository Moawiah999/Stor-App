import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storapp/models/get_all_products.dart';

import '../services/get_all_products_services.dart';
import '../widget/Custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "New Trend",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.abc),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<List<ProductsModels>>(
            future: AllproductsServices().getallProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductsModels> Products = snapshot.data!;
                return GridView.builder(
                  itemCount: Products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                    return CustomCard();
                  },
                );
              } else {
                return Container(color: Colors.amber,);
              }
            },
          )),
    );
  }
}
