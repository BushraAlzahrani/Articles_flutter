import 'package:articles/Utils/colors.dart';
import 'package:flutter/material.dart';

import '../text_utils.dart';

class ArticleTextField extends StatelessWidget {

  final TextEditingController controller;
  final String text;
  final String hintText;

  ArticleTextField(
      {super.key,
      required this.controller,
      required this.text,
      required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          style: TextStyle(color: Colors.black),
          cursorColor: Colors.black,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: hintText,
              label: TextUtils(
                text: text,
                fontSize: 20,
                color: mainColor, )),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
