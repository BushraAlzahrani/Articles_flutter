class CategoryModel {
  final int id;
  final String category;
  final String? image;

  CategoryModel({required this.id, required this.category, this.image});

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'],
        category: json['category'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'category': category,
      };
}


