import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/movies_ui/home/item_home_movie.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              // photo in header
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Opacity(
                        opacity: 0.9,
                        child: Image.asset(
                          "lib/movies_ui/assets/marvel.jpg",
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 12.0,
                      left: 12.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Welcome: Mohammed \nMoviesApp",
                          style: GoogleFonts.barlow(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 8.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                            ),
                            color: Colors.cyan,
                          ),
                          child: Text(
                            "Premium",
                            style: GoogleFonts.barlow(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // trending
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  children: [
                    Text(
                      "Trending",
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: GoogleFonts.barlow(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView.separated(
                  itemBuilder: (context,index)=>itemHomeMovie(context),
                  separatorBuilder: (context,index)=>const SizedBox(width: 10.0,),
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,

                ),
              ),
              const SizedBox(height: 15.0,),

              // hollywood
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  children: [
                    Text(
                      "Hollywood",
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: GoogleFonts.barlow(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 240,
                child: ListView.separated(
                  itemBuilder: (context,index)=>itemHomeMovie(context),
                  separatorBuilder: (context,index)=>const SizedBox(width: 10.0,),
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
