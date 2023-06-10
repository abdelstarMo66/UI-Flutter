import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget itemSettings({
  required IconData icon,
  required String text,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 25.0,
              ),
              const Spacer(),
              Text(
                text,
                style: GoogleFonts.barlow(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                width: 12.0,
              ),
              const Icon(Icons.arrow_forward_ios_outlined,size: 20.0,),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            color: Colors.grey.withOpacity(0.8),
            height: 1.0,
            width: double.infinity,
          ),
        ],
      ),
    );
