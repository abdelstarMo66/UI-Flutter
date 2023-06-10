import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/movies_ui/sheared/movie_details.dart';

Widget itemHomeMovie(context) => InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetails(),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    "lib/movies_ui/assets/avatar.jpg",
                    width: 120,
                    height: 160,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "Avatar",
            style: GoogleFonts.barlow(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(
            height: 3.0,
          ),
          Text(
            "R H Films",
            style: GoogleFonts.barlow(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 3.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.star,
                color: Colors.cyan,
                size: 20.0,
              ),
              const Icon(
                Icons.star,
                color: Colors.cyan,
                size: 20.0,
              ),
              const Icon(
                Icons.star,
                color: Colors.cyan,
                size: 20.0,
              ),
              const Icon(
                Icons.star,
                color: Colors.cyan,
                size: 20.0,
              ),
              const Icon(
                Icons.star,
                color: Colors.cyan,
                size: 20.0,
              ),
            ],
          ),
        ],
      ),
    );
