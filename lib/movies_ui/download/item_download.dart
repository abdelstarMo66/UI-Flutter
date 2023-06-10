import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/movies_ui/download/slide_downloder.dart';

Widget itemDownload() => Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                  "lib/movies_ui/assets/avatar.jpg",
                  height: 100.0,
                  width: 100.0,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: SizedBox(
              height: 100.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    height: 5.0,
                  ),
                  SlideDownloader(),

                ],
              ),
            ),
          ),
          const SizedBox(
            width: 3.0,
          ),
          const Icon(
            Icons.stop_circle_outlined,
            color: Colors.black,
          ),
          const Icon(
            Icons.more_vert_outlined,
            color: Colors.black,
          ),
        ],
      ),
    );
