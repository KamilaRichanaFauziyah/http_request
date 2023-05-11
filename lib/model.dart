class ProductModel {
  int? id;
  String? title;
  String? description;
  double? price;
  String? category;
  String? image;

  ProductModel({
    this.id,
    this.title,
    this.description,
    this.price,
    this.category,
    this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    price: json['price'].toDouble(),
    category: json['category'],
    image: json['image'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'price': price,
    'category': category,
    'image': image,
  };
}
