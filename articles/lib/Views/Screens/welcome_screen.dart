import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/sidebar_menu.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        automaticallyImplyLeading: true,
       ),
      body: Container(
        color: mainColor,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text('WelcomeScreen')),
      ),
      drawer: SideBarMenu(),
    );
  }
}
