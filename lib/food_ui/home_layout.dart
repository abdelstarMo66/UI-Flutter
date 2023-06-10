import 'package:flutter/material.dart';
import 'package:ui/food_ui/widget/body_layout.dart';
import 'package:ui/food_ui/widget/custom_app_bar.dart';
import 'package:ui/food_ui/widget/custom_bottom_nav_bar.dart';

class FoodHomeLayout extends StatelessWidget {
  const FoodHomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(context),
      body: const BodyHomeLayout(),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
