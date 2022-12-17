import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/sidebar_menu.dart';
import 'package:flutter/material.dart';

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
        Column(children: [
          Container(
            height: 440,
            width: 460,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/knowledge_hub_logo.png'),
            )),
            child: SizedBox(),
          ),
          Container(
            height: 440,
            width: 460,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/welcomeScreen.png'),
            )),
            child: SizedBox(),
          ),
        ]),
      ]),
      drawer: SideBarMenu(),
    );
  }
}
