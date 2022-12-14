
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import '../../../Utils/colors.dart';

class AuthTextFromField extends StatelessWidget {
  final TextEditingController controller;
  bool? obscureText;
  final String text;

  AuthTextFromField({
    super.key,
    this.obscureText,
    required this.controller,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: TextUtils(text: text, fontSize: 20, color: blackColor),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
          style: TextStyle(color: Colors.black),
          obscureText: obscureText!,
          cursorColor: Colors.black,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            fillColor: whiteColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(7),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(7),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(7),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
