import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../sheared/movie_details.dart';

Widget itemCategory(context) => InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MovieDetails(),
          ),
        );
      },
      child: Container(
        height: 250.0,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    "lib/movies_ui/assets/avatar.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              "Avatar",
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              "R H Films",
              style: GoogleFonts.barlow(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Container(
              width: 70.0,
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan),
                borderRadius: BorderRadius.circular(6.0),
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star_border_purple500,
                    color: Colors.cyan,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "4.3",
                    style: GoogleFonts.barlow(
                      color: Colors.cyan,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
