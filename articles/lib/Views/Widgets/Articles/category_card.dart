import 'package:articles/Utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: Column(
        children: [
          Container(
              height: 140,
              width: 160,
              decoration: BoxDecoration(
                  color: whiteColor,
                  image: DecorationImage(
                      image: AssetImage('assets/images/astronomy.png'),
                      fit: BoxFit.cover)),
              child: SizedBox()),
          Divider(
            color: darkGreyColor,
          ),
          Text('data')
        ],
      ),
    );
  }
}
