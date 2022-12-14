import 'dart:convert';
import 'package:articles/Router/Routes.dart';
import 'package:articles/Utils/colors.dart';
import 'package:articles/Utils/string_utils.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Models/article_model.dart';

class ArticleApiClient {
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
      });
      if (response.statusCode == 200) {
        Get.snackbar("Succes", "Added article",
          snackPosition: SnackPosition.TOP,
          backgroundColor: whiteColor,
        );
        // Get.offNamed(Routes.myArticles);
        print('Added article');
      } else {
        print('error can not add article');
        var data = jsonDecode(response.body.toString());
        print(data);
         Get.snackbar("Faild", data.toString(),
          snackPosition: SnackPosition.TOP,
            backgroundColor: whiteColor,
        );
      }
    } catch (e) {
      print(e.toString());
    }
  }


  // getCategories(){}


  static Future<List<ArticleModel>> getArticles() async {

    var response = await http.get(Uri.parse('${baseURL}all_articles/'));

    if (response.statusCode == 200) {
      var jsonData = response.body;
      return articleModelFromJson(jsonData);
    } else {
      return throw Exception('Failed to load articles');
    }

  }
}
