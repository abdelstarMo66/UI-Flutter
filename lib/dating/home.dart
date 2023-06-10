import 'package:flutter/material.dart';
import 'package:ui/dating/bottom.dart';
import 'package:ui/dating/header.dart';
import 'package:ui/dating/people.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            HeaderScreen(),
            Expanded(
              child: PeopleScreen(),
            ),
            BottomHomeScreen(),
          ],
        ),
      ),
    );
  }
}
