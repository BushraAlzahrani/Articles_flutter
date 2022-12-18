import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Logic/Controller/article_controller.dart';
import '../../../Router/Routes.dart';
import 'article_screen.dart';

class AllArticles extends StatelessWidget {
  AllArticles({super.key});

  final controller = Get.find<ArticleController>();

  @override
  Widget build(BuildContext context) {
        print(' this in articles screen articles per category list length ${controller.articlesPerCategoryList.length}');
    return Scaffold(
      backgroundColor: mainColor,
      body: Obx(
                () => ListView.builder(
            padding: EdgeInsets.only(top: 100, left: 20, right: 20),
            itemCount: controller.articlesPerCategoryList.length,
            itemBuilder: ((context, index) => Container(
                  child: Column(
                    children: [
                      ListTile(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: whiteColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: whiteColor,
                        leading: Container(
                          // height: 150,
                          width: 50,
                          child: Image.network(
                              '${controller.articlesPerCategoryList[index].image}'),
                        ),
                        title: TextUtils(
                          text: controller
                              .articlesPerCategoryList[index].title
                              .toUpperCase(),
                          fontSize: 12,
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                        subtitle: TextUtils(
                          text: controller
                              .articlesPerCategoryList[index].summary,
                          fontSize: 12,
                          color: blackColor,
                          textOverflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                        trailing: TextButton(
                          onPressed: () {
                            controller.getArticleDetails(controller
                                .articlesPerCategoryList[index].id
                                .toString());
                                print('IIINNNDEEEEX ${controller
                                .articlesPerCategoryList[index].id}');
                            Get.toNamed(Routes.articleScreen);
                          },
                          child: TextUtils(
                            text: 'View Article',
                            fontSize: 12,
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
