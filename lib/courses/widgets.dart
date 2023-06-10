import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Hi MMMMM",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Text(
              "Find Your Course",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(
            "lib/courses/assets/profile.jpg",
            height: 60.0,
            width: 60.0,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class ImageBanner extends StatelessWidget {
  const ImageBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            "lib/courses/assets/banner.jpg",
            height: 190.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "50% OFF",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 40.0,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "246+ Course",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.transparent,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                    size: 25.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text(
                "Enroll Now",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      decoration: BoxDecoration(
        color: Colors.pink.withOpacity(0.7),
        borderRadius: BorderRadius.circular(18.0),
      ),
    );
  }
}

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          onPageChanged: (index, reason) {
            setState(
                  () {
                _currentIndex = index;
              },
            );
          },
        ),
        items: [
          "lib/courses/assets/instractor.jpg",
          "lib/courses/assets/instractor.jpg",
          "lib/courses/assets/instractor.jpg",
        ]
            .map(
              (item) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.only(
                top: 10.0,
                bottom: 10.0,
              ),
              elevation: 6.0,
              shadowColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}
