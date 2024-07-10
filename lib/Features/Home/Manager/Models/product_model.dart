class product_model {
  final int? id;
  final String? title;
  final String? description;
  final double? price;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List? images;

  product_model({
    required this.brand,
    required this.thumbnail,
    required this.images,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
  });

  factory product_model.getAllProduct(Map<String, dynamic> json) =>
      product_model(
        id: json["id"],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        category: json['category'],
        brand: json['brand'],
        thumbnail: json['thumbnail'],
        images: json['images'],
      );
}
