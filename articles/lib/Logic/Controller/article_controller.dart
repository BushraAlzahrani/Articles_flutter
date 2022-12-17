import 'package:articles/Models/category_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  @override
  void onInit() {
    super.onInit();
    getCategories();
    getTheArticle();
  }

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

  void getArticlesPerCatgory(String catgoryId) async {
    var articles = await ArticleService.getArticlesPerCategory(catgoryId);
    try {
      isLoading(true);
      if (articles.isNotEmpty) {
        articlesPerCategoryList.addAll(articles);
      }
    } finally {
      isLoading(false);
    }
  }


    void getArticleDetails(String articleId) async {
    var articles = await ArticleService.getArticleDetails(articleId);
    try {
      isLoading(true);
      if (articles.isNotEmpty) {
        articleDetailsList.addAll(articles);
      }
    } finally {
      isLoading(false);
    }
  }
}
