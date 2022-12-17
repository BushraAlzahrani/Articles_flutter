import 'package:articles/Logic/Controller/article_controller.dart';
import 'package:articles/Utils/colors.dart';
import 'package:articles/Views/Widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class CategoryDropDownBtn extends StatefulWidget {
  CategoryDropDownBtn({super.key});

  @override
  State<CategoryDropDownBtn> createState() => _CategoryDropDownBtnState();
}

class _CategoryDropDownBtnState extends State<CategoryDropDownBtn> {
  var controller = Get.find<ArticleController>();

  var dropdownValue = 'technology';

  @override
  Widget build(BuildContext context) {
    print('dropdownValue ${controller.categoryNames}');

    return Obx(
      () => Container(
        width: 400,
        child: DropdownButton<String>(
          hint: TextUtils(
              text: 'Select Category', fontSize: 16, color: darkGreyColor),
          value: dropdownValue,
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
            setState(() {
              dropdownValue = value!;
            });
            controller.selectedCategory.value = value!;
            if (value == 'technology') {
              controller.selectedCategoryId.value = '1';
            } else if (value == 'business') {
              controller.selectedCategoryId.value = '2';
            } else if (value == 'health') {
              controller.selectedCategoryId.value = '3';
            } else if (value == 'langauges') {
              controller.selectedCategoryId.value = '4';
            } else if (value == 'astronomy') {
              controller.selectedCategoryId.value = '5';
            } else if (value == 'sport') {
              controller.selectedCategoryId.value = '6';
            }
          },
          items: controller.categoryNames
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
