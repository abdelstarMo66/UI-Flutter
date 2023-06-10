import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/food_ui/constant.dart';

AppBar customAppBar(context) => AppBar(
  elevation: 0.0,
  backgroundColor: Colors.transparent,
  leading: IconButton(
    onPressed: () {},
    icon: SvgPicture.asset("lib/food_ui/assets/icons/menu.svg"),
  ),
  centerTitle: true,
  actions: [
    IconButton(
      onPressed: () {},
      icon: SvgPicture.asset("lib/food_ui/assets/icons/notification.svg"),
    ),
  ],
  title: RichText(
    text: TextSpan(
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        children: const [
          TextSpan(style: TextStyle(color: kPrimaryColor), text: "Punk"),
          TextSpan(style: TextStyle(color: kSecondaryColor), text: "Food"),
        ]),
  ),
);
