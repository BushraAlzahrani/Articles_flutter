import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Logic/Controller/article_controller.dart';
import '../../../Utils/colors.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({super.key});

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
            // color: greyColor,
            // height: 650,
            // width: 350,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => Stack(
                        children: [
                          Container(
                              child: Image.network(
                                  '${controller.articleDetailsList[index].image}')),
                          Expanded(
                            child: Container(
                              color: greyColor,
                              // height: 500,
                              margin: EdgeInsets.only(top: 160),
                              //  width: 350,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: TextUtils(
                                      text: controller
                                          .articleDetailsList[index].title,
                                      fontSize: 35,
                                      color: blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextUtils(
                                      text:
                                          '''      ${controller.articleDetailsList[index].content}''',
                                      // controller.articleList[index].title,
                                      fontSize: 14,
                                      color: blackColor),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )),
          ),
        ),
      ),
    );
  }
}
