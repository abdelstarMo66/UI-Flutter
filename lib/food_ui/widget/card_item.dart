import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/food_ui/constant.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String shop;
  final String image;
  const CardItem(
      {Key? key, required this.title, required this.shop, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      shadowColor: Colors.white.withOpacity(0.5),
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.13),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(image),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: const TextStyle(),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              shop,
              style: const TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
