import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Logic/Controller/article_controller.dart';
import '../../../Utils/colors.dart';
import '../../Widgets/Articles/article_textfield.dart';
import '../../Widgets/Articles/category_drop_down_button.dart';
import '../../Widgets/custom_button.dart';

class AddArticleScreen extends StatelessWidget {
   AddArticleScreen({super.key});
    final controller = Get.find<ArticleController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
            leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        )),
       backgroundColor: mainColor,
        body: Center(
          child: Container(
            height: 650,
            width: 360,
            color: greyColor,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
                child: ListView(children: [
                  ArticleTextField(
                    text: 'Title',
                    hintText: 'Article Title',
                    controller: controller.articleTitle,
                  ),
                   ArticleTextField(
                    text: 'Reference',
                    hintText: 'Article Reference URL',
                    controller: controller.articleRef,
                  ),
                      ArticleTextField(
                    text: 'Image',
                    hintText: 'Article Image URL',
                    controller: controller.articleImage,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextUtils(text: 'Category', fontSize: 20, color: mainColor)),
                  CategoryDropDownBtn(),
                         ArticleTextField(
                    text: 'Summary',
                    hintText: 'Article Summary',
                    controller: controller.articleImage,
                  ),
                        ArticleTextField(
                    text: 'Content',
                    hintText: 'Article Content',
                    controller: controller.articleImage,
                  ),
                  SizedBox(height: 10,),
                  CustomButton(
                      text: 'Add',
                      onPressed: () {
                
                      }),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
