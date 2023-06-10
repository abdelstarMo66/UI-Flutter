import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 8.0,
      padding: const EdgeInsets.all(6.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: SvgPicture.asset("lib/food_ui/assets/icons/home.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("lib/food_ui/assets/icons/Following.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("lib/food_ui/assets/icons/Glyph.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("lib/food_ui/assets/icons/person.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
