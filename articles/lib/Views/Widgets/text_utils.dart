import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final double fontSize;
  FontWeight? fontWeight;
  final Color color;
 

  TextUtils(
      {super.key,
      this.fontWeight,
      required this.text,
      required this.fontSize,
      required this.color,
    });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.dmSans(
          textStyle: TextStyle(
              color: color, fontSize: fontSize, fontWeight: fontWeight),
        ));
  }
}
