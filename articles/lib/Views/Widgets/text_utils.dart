import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final double fontSize;
  FontWeight? fontWeight;
  final Color color;
  TextOverflow? textOverflow;
  int? maxLines;
  TextDecoration? underLine;

  TextUtils({
    super.key,
    this.fontWeight,
    this.maxLines,
    this.textOverflow,
    this.underLine,
    required this.text,
    required this.fontSize,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
    maxLines: maxLines,
    overflow: textOverflow,
        style: GoogleFonts.dmSans(
          textStyle: TextStyle(
              decoration: underLine,
              color: color, fontSize: fontSize, fontWeight: fontWeight),
        ));
  }
}
