import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/sidebar_menu.dart';
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Router/Routes.dart';
import '../Widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/knowledge_hub_logo.png'),
              )),
              child: SizedBox(),
            ),
            TextUtils(
              text: 'Enjoy reading over 10,000 articles',
              fontSize: 21,
              color: whiteColor,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20,),
            TextUtils(
              text: 'Explore the variety of categories and read from a 10,000 of trusted authors with the original articles and a breif of the articles.',
              fontSize: 16,
              color: whiteColor,
           
            ),
             SizedBox(height: 20,),
            Container(
              height: 440,
              width: 460,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/welcomeScreen.png'),
              )),
              child: SizedBox(height: 20,),
            ),
             CustomButton(
                      text: 'Discover Catgories',
                      textColor: whiteColor,
                      buttonColor: blueColor,
                      onPressed: () {
                        Get.toNamed(Routes.categoryScreen);
                      }),
          ]),
        ),
      ]),
      drawer: SideBarMenu(),
    );
  }
}
