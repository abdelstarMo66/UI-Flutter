import 'package:flutter/material.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      children: List.generate(
        15,
        (index) => itemView(context),
      ),
    );
  }
}

Widget itemView(context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              "lib/dating/assets/person.jpg",
              height: MediaQuery.of(context).size.height/1.4,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black26.withOpacity(0.2),
            ),
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Mohamed Ahmed, 21",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Software Engineering, Flutter Developer",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
