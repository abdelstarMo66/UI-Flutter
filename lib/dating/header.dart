import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent.withOpacity(0.4),
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 13.0,
            backgroundColor: Colors.pink,
            child: Icon(
              Icons.electric_bolt_rounded,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          const SizedBox(width: 15.0,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Upgrade to premium",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.0,),
                Text(
                  "You date is waiting",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.settings_outlined,
            color: Colors.pink,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
