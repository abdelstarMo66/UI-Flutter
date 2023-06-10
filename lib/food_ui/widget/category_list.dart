import 'package:flutter/material.dart';
import 'package:ui/food_ui/widget/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    int currentSelected = 0;
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      height: MediaQuery.of(context).size.height * 0.06,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (currentSelected == index) {
            return CategoryItem(
              press: () {},
              isActive: true,
            );
          } else {
            return CategoryItem(
              press: () {},
              isActive: false,
            );
          }
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 20.0,
        ),
      ),
    );
  }
}
