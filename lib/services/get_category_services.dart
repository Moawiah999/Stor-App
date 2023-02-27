import 'package:storapp/helper/api.dart';
import 'package:storapp/models/get_all_products.dart';

class CategoryServices {
  Future<List<ProductsModels>> getAllcategoryProducts(
      String categoryName) async {
    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/${categoryName}");

    List<ProductsModels> productslist = [];
    for (int i = 0; i < data.length; i++) {
      productslist.add(
        ProductsModels.fromJson(data[i]),
      );
    }
    return productslist;
  }
}
