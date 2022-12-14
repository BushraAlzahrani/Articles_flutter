import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Router/Routes.dart';

class SideBarMenu extends StatelessWidget {
  SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 20,
          ),
           DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text('data'),
            // child: Container(
            //   child: Image.asset('articles/assets/images/knowledge_hub_logo.png'),)
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: const Text('Add Articles'),
            onTap: () {
          Get.toNamed(Routes.addArticleScreen);
            },
          ),
           ListTile(
            leading: Icon(Icons.category),
            title: const Text('Categories'),
            onTap: () {
          Get.toNamed(Routes.addArticleScreen);
            },
          ),

              ListTile(
            leading: Icon(Icons.login_outlined),
            title: const Text('Login'),
            onTap: () {
          Get.toNamed(Routes.registerScreen);
            },
          ),

            ListTile(
            leading: Icon(Icons.logout_outlined),
            title: const Text('Logout'),
            onTap: () {
          // Get.toNamed(Routes.addArticleScreen);
            },
          ),
          
        ],
      ),
    );
  }
}
