import 'dart:convert';

List<ArticleModel> articleModelFromJson(String str) => List<ArticleModel>.from(
    json.decode(str).map((x) => ArticleModel.fromJson(x)));

String articleModelToJson(List<ArticleModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ArticleModel {
  final String id;
  final String title;
  final String content;
  final String summary;
  final String date;
  final String reference;
  final int likes;
  final String publisher;
  final String category;

  ArticleModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.summary,
      required this.date,
      required this.reference,
      required this.likes,
      required this.publisher,
      required this.category});

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        summary: json['summary'],
        date: json['date'],
        reference: json['reference'],
        likes: json['likes'],
        publisher: json['publisher'],
        category: json['category'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'content': content,
        'summary': summary,
        'date': date,
        'reference': reference,
        'likes': likes,
        'publisher': publisher,
        'category': category,
      };
}
