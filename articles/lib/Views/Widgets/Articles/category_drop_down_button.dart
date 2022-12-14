

import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
 List<String> list = ['Health', 'Bussiness'];
class CategoryDropDownBtn extends StatelessWidget {
   CategoryDropDownBtn({super.key});

 String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: DropdownButton<String>(
        hint: TextUtils(text: 'Select Category', fontSize: 16, color: darkGreyColor),
        // value: dropdownValue,
        icon: Padding(
          padding: const EdgeInsets.only(left: 190),
          child: const Icon(Icons.arrow_drop_down),
        ),
        elevation: 16,
        style: const TextStyle(color: mainColor),
        underline: Container(
          height: 1,
          color: Colors.grey,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
        
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}