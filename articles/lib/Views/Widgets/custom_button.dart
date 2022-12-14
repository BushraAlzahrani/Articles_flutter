import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: secondaryColor,
        minimumSize: const Size(160, 50),
      ),
      onPressed: onPressed,
      child: TextUtils(
          text: text,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: mainColor,
         ),
    );
  }
}
