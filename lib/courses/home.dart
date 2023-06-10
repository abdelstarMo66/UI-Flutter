import 'package:flutter/material.dart';
import 'package:ui/courses/widgets.dart';

class CoursesHome extends StatelessWidget {
  const CoursesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF262835),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 14.0,
          ),
          child: ListView(
            children: const [
              Bar(),
              SizedBox(
                height: 32.0,
              ),
              ImageBanner(),
              SizedBox(
                height: 28.0,
              ),
              Text(
                "Categories",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Categories(),
              SizedBox(
                height: 28.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular Courses",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              Courses(),
            ],
          ),
        ),
      ),
    );
  }
}
