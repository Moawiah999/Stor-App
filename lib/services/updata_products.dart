import 'package:storapp/helper/api.dart';

import '../models/get_all_products.dart';

class UPdataProducts {
  Future<ProductsModels> updataProducts(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        await Api().post(url: "https://fakestoreapi.com/products/:id", body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category
    });

    return ProductsModels.fromJson(data);
  }
}
