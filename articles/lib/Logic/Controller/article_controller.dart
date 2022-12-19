import 'package:articles/Models/category_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../Models/article_model.dart';
import '../../Service/article_service.dart';

class ArticleController extends GetxController {
  TextEditingController articleTitle = TextEditingController();
  TextEditingController articleCategory = TextEditingController();
  TextEditingController articleRef = TextEditingController();
  TextEditingController articleContent = TextEditingController();
  TextEditingController articleImage = TextEditingController();
  TextEditingController articleSummary = TextEditingController();

  var articleList = <ArticleModel>[].obs;
  var categoryList = <CategoryModel>[].obs;
  var categoryNames = <String>[].obs;
  var articlesPerCategoryList = <ArticleModel>[].obs;
  var articleDetailsList = <ArticleModel>[].obs;

  var isLoading = true.obs;
  var selectedCategoryId = '1'.obs;
  var selectedCategory = ''.obs;
  var storage = GetStorage();
  var articleID = '';

  @override
  void onInit() {
    super.onInit();
    getCategories();
    getTheArticle();
  }

// Articles

// Get all the articles save it to a list to load when the app first opened
  void getTheArticle() async {
    var articles = await ArticleService.getArticles();
    try {
      isLoading(true);
      if (articles.isNotEmpty) {
        articleList.addAll(articles);
      }
    } finally {
      isLoading(false);
    }
  }

// Get the articles per catgory add it to a list and update it with each call
  void getArticlesPerCatgory(String catgoryId) async {
    var articles = await ArticleService.getArticlesPerCategory(catgoryId);

    if (articles.isNotEmpty) {
      if (articlesPerCategoryList.isEmpty) {
        articlesPerCategoryList.addAll(articles);
      } else {
        articlesPerCategoryList.clear();
        articlesPerCategoryList.addAll(articles);
      }
    } else {
      // articlesPerCategoryList.removeWhere((item)=>item.id == 4);
      print('Else');
      print(articles);
    }
    print(
        ' this in controller articles per category ${articlesPerCategoryList.length}');
  }

// Get the articles details add it to a list and update it with each call
  void getArticleDetails(String articleId) async {
    var articles = await ArticleService.getArticleDetails(articleId);
    // storage.write('articleID', articleId);
    try {
      isLoading(true);
      if (articles.isNotEmpty) {
        articleDetailsList.addAll(articles);
      }
    } finally {
      isLoading(false);
    }
    print('@@@@@@@@@ ${articleId}');
  }

// Catgories

// Get all the catgories save it to a list to load when the app first opened
  void getCategories() async {
    var categories = await ArticleService.getArticleCategories();
    try {
      isLoading(true);
      if (categories.isNotEmpty) {
        categoryList.addAll(categories);

        print('in article controller categoryNames !!!!! ${categoryNames}');
      }
    } finally {
      isLoading(false);
    }
  }
}
