import 'dart:convert';

class ArticleModel {
  final int id;
  final String title;
  final String image;
  final String content;
  final String summary;
  final String date;
  final String reference;
  final int likes;
  final String category;

  ArticleModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.content,
      required this.summary,
      required this.date,
      required this.reference,
      required this.likes,
      required this.category});

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        content: json['content'],
        summary: json['summary'],
        date: json['date'],
        reference: json['reference'],
        likes: json['likes'],
        category: json['category'].toString(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'image': title,
        'content': content,
        'summary': summary,
        'date': date,
        'reference': reference,
        'likes': likes,
        'category': category,
      };
}
