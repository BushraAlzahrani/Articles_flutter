import 'package:articles/Router/Routes.dart';
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Logic/Controller/article_controller.dart';
import '../../../Utils/colors.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  final controller = Get.find<ArticleController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: greyColor,
        iconTheme: IconThemeData(color: mainColor),
        title: TextUtils(
          text: 'Categories',
          fontSize: 20,
          color: mainColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: greyColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return GetBuilder<ArticleController>(
                builder: (_) => InkWell(
                    onTap: () {
                      controller.getArticlesPerCatgory(
                          controller.categoryList[index].id.toString());
                      Get.toNamed(Routes.allArticles);
                    },
                    child: Container(
                      color: whiteColor,
                      child: Column(
                        children: [
                          Container(
                              height: 140,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        controller.categoryList[index].image!,
                                      ),
                                      fit: BoxFit.cover)),
                              child: SizedBox()),
                          Divider(
                            color: darkGreyColor,
                          ),
                          Text(controller.categoryNames[index].toUpperCase())
                        ],
                      ),
                    )));
          },
        ),
      ),
    ));
  }
}
