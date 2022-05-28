class Product {
  String image;
  String name;
  String? description;
  double price;

  Product({
    required this.image,
    required this.name,
    required this.price,
    this.description,
  });
}
