import 'package:flutter/material.dart';
import '../../../Utils/colors.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
           color: mainColor,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text('ArticleScreen')),
      ),
    );
  }
}