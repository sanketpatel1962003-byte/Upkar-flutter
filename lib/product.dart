class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String description;
  bool isFavorite;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.isFavorite = false,
  });
}
