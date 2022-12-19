import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Logic/Controller/article_controller.dart';
import '../../../Utils/colors.dart';

class ArticleScreen extends StatelessWidget {
  ArticleScreen({super.key, required this.title,
   required this.content, required this.image, required this.index});
   int index;
   String title;
   String content;
   String image; 


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
          body:  Container(
            // color: greyColor,
            // height: 650,
            // width: 350,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
              child: Stack(
                      children: [
                        Container(
                            child: Image.network(
                                '${image}')),
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
                                    text: title,
                                    fontSize: 35,
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextUtils(
                                    text:
                                        '''      ${content}''',
                                    // controller.articleList[index].title,
                                    fontSize: 14,
                                    color: blackColor),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
            )),
          ),
          ));
    
  }
}
