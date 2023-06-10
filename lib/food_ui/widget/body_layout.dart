import 'package:flutter/material.dart';
import 'package:ui/food_ui/widget/search_box.dart';
import 'card_list.dart';
import 'category_list.dart';
import 'offer_item.dart';

class BodyHomeLayout extends StatelessWidget {
  const BodyHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SearchBox(),
                CategoryList(),
                CardList(),
                Text(
                  "Offers & Discounts",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                OfferItem(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
