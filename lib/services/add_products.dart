import 'dart:convert';

import 'package:storapp/helper/api.dart';
import 'package:http/http.dart' as http;
import '../models/get_all_products.dart';

class AddProducts {
  Future<ProductsModels> addProducts(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(url: "https://fakestoreapi.com/products", body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category
    });

    return ProductsModels.fromJson(data);
  }
}
