import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/food_ui/constant.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          color: kSecondaryColor.withOpacity(0.33),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search here",
          hintStyle: const TextStyle(
            color: kSecondaryColor,
          ),
          icon: SvgPicture.asset("lib/food_ui/assets/icons/search.svg"),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          color: kSecondaryColor,
        ),
      ),
    );
  }
}
