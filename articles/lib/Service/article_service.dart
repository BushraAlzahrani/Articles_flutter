import 'dart:convert';
import 'package:articles/Logic/Controller/article_controller.dart';
import 'package:articles/Models/category_models.dart';
import 'package:articles/Utils/colors.dart';
import 'package:articles/Utils/string_utils.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../Logic/Controller/auth_controller.dart';
import '../Models/article_model.dart';
import '../Router/Routes.dart';

class ArticleService {
  final authController = Get.put(AuthController());

// Articles:

// Post an article with the api

  void addArticle(String title, String image, String content, String summary,
      String reference, String category) async {
    try {
      final response =
          await http.post(Uri.parse('${baseURL}add_article/'), body: {
        "title": title,
        "image": image,
        "content": content,
        "summary": summary,
        "reference": reference,
        "category": category,
      }, headers: {
        'Authorization': 'Bearer ${authController.storage.read('userToken')}'
      });
      if (response.statusCode == 200) {
        Get.snackbar(
          "Succes",
          "Added article",
          snackPosition: SnackPosition.TOP,
          backgroundColor: whiteColor,
        );
        // Get.offNamed(Routes.allArticles);
        print('Added article');
      } else {
        print('error can not add article');
        var data = jsonDecode(response.body.toString());
        print(data);
        Get.snackbar(
          "Faild",
          data.toString(),
          snackPosition: SnackPosition.TOP,
          backgroundColor: whiteColor,
        );
      }
    } catch (e) {
      print(e.toString());
    }
  }

// Get articles from api

  static Future<List<ArticleModel>> getArticles() async {
    var response = await http.get(Uri.parse('${baseURL}all_articles/'));
    var articles = <ArticleModel>[];

    if (response.statusCode == 200) {
      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> data = map["Article"];
      print(response.statusCode);
      for (var i in data) {
        articles.add(ArticleModel.fromJson(i));
      }
      return articles;
    } else {
      return throw Exception('Failed to load articles');
    }
  }

  // Get articles details 

    static Future<List<ArticleModel>> getArticleDetails(
      String articleId) async {
    var response = await http.get(
        Uri.parse('${baseURL}article_details/${articleId}/'));
    var articlesDetails = <ArticleModel>[];

    if (response.statusCode == 200) {
      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> data = map["Article"];
      print(response.statusCode);
      for (var i in data) {
        articlesDetails.add(ArticleModel.fromJson(i));
      }
      return articlesDetails;
    } else {
      return throw Exception('Failed to load articles');
    }
  }


// Categories:

// Get the categories

  static Future<List<CategoryModel>> getArticleCategories() async {
    var response = await http.get(Uri.parse('${baseURL}all_categories/'));
    var categories = <CategoryModel>[];
    var categoriesName = <String>[];
    var articleController = Get.put(ArticleController());
    if (response.statusCode == 200) {
      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> data = map["Categories"];

      print(response.statusCode);
      for (var i in data) {
        categories.add(CategoryModel.fromJson(i));

        categoriesName.add(i['name']);
      }
      articleController.categoryNames.addAll(categoriesName);

      print('in category service  list catgory names${categoriesName}');
      return categories;
    } else {
      return throw Exception('Failed to load articles');
    }
  }

  // Get the articles in a catgory

  static Future<List<ArticleModel>> getArticlesPerCategory(
      String categoryId) async {
    var response = await http.get(
        Uri.parse('${baseURL}posted_articles_per_category/${categoryId}/'));
    var articlesPerCategory = <ArticleModel>[];

    if (response.statusCode == 200) {
      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> data = map["Articles"];
      print(response.statusCode);
      for (var i in data) {
        articlesPerCategory.add(ArticleModel.fromJson(i));
      }
      return articlesPerCategory;
    } else {
      return throw Exception('Failed to load articles');
    }
  }
}
