import 'package:flutter/material.dart';
import '../../../Utils/colors.dart';
import '../../Widgets/Articles/category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: greyColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
          child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
            itemCount: 6,
            itemBuilder: (context, index) {
            return CategoryCard();
          },
        ),
        ),
    ));
  }
}
