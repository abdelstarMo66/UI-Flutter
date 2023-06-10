import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class BottomHomeScreen extends StatelessWidget {
  const BottomHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25.0, right: 50.0, left: 50.0,top: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: Colors.pink.withOpacity(0.3),
            radius: 20.0,
            child: const Icon(
              EvaIcons.close,
              color: Colors.pinkAccent,
              size: 25.0,
            ),
          ),
          const CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 32.0,
            child: Icon(
              EvaIcons.heartOutline,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.pink.withOpacity(0.3),
            radius: 20.0,
            child: const Icon(
              EvaIcons.messageCircleOutline,
              color: Colors.pinkAccent,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
