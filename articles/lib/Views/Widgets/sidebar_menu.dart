import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Router/Routes.dart';

class SideBarMenu extends StatelessWidget {
  SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: mainColor.withOpacity(0.8),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: mainColor.withOpacity(0.9),
            ),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/knowledge_hub_logo.png'),
              )),
              child: SizedBox(),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: whiteColor,
            ),
            title: TextUtils(
                text: 'Add Articles', fontSize: 20, color: whiteColor),
            onTap: () {
              Get.toNamed(Routes.addArticleScreen);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.category,
              color: whiteColor,
            ),
            title:
                TextUtils(text: 'Categories', fontSize: 20, color: whiteColor),
            onTap: () {
              Get.toNamed(Routes.categoryScreen);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.login_outlined,
              color: whiteColor,
            ),
            title: TextUtils(text: 'Login', fontSize: 20, color: whiteColor),
            onTap: () {
              Get.toNamed(Routes.loginScreen);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: whiteColor,
            ),
            title: TextUtils(text: 'Logout', fontSize: 20, color: whiteColor),
            onTap: () {
              // Get.toNamed(Routes.addArticleScreen);
            },
          ),
        ],
      ),
    );
  }
}
