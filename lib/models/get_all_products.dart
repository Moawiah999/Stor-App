class ProductsModels {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  ProductsModels(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image});

  factory ProductsModels.fromJson(JsonData) {
    return ProductsModels(
        id: JsonData["id"],
        title: JsonData["title"],
        price: JsonData["price"],
        description: JsonData["description"],
        category: JsonData["category"],
        image: JsonData["image"]);
  }
}
