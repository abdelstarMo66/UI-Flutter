import 'package:flutter/material.dart';
import 'package:ui/food_ui/constant.dart';
import 'package:ui/food_ui/widget/card_item.dart';

class CardList extends StatelessWidget {
  const CardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25.0),
      color: Colors.white,
      height: MediaQuery.of(context).size.height*0.27,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: card["title"]!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CardItem(
              title: card['title']![index],
              shop: card['shop']![index],
              image: card['image']![index]);
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          width: 12.0,
        ),
      ),
    );
  }
}
