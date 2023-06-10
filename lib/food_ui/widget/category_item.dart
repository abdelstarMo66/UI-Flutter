import 'package:flutter/material.dart';
import 'package:ui/food_ui/constant.dart';

class CategoryItem extends StatelessWidget {
  final bool isActive;
  final void Function()? press;
  const CategoryItem({
    Key? key,
    required this.press,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Combo Meal",
            style: isActive
                ? const TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            )
                : const TextStyle(fontSize: 12),
          ),
          if (isActive)
            Container(
              height: 3.0,
              width: 22.0,
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
        ],
      ),
    );
  }
}
