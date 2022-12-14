import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color textColor;
  final Color buttonColor;
  const CustomButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.textColor,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(160, 50),
        backgroundColor: buttonColor,
      ),
      onPressed: onPressed,
      child: TextUtils(
        text: text,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );
  }
}
