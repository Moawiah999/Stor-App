import 'dart:convert';

import 'package:storapp/helper/api.dart';

import '../models/get_all_products.dart';

class AllproductsServices {
  Future<List<ProductsModels>> getallProducts() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products");

    List<ProductsModels> productslist = [];
    for (int i = 0; i < data.length; i++) {
      productslist.add(
        ProductsModels.fromJson(data[i]),
      );
    }
    return productslist;
  }
}
