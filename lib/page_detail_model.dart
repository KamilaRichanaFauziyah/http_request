class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String image;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: double.parse(json['price'].toString()),
      category: json['category'],
      image: json['image'],
    );
  }
}

class DetailProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String category;
  final String image;
  final int ratingCount;
  final double rating;

  DetailProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
    required this.ratingCount,
    required this.rating,
  });

  factory DetailProductModel.fromJson(Map<String, dynamic> json) {
    return DetailProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: double.parse(json['price'].toString()),
      category: json['category'],
      image: json['image'],
      ratingCount: json['rating']['count'],
      rating: double.parse(json['rating']['rate'].toString()),
    );
  }
}
