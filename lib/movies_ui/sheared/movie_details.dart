import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    "lib/movies_ui/assets/avatar.jpg",
                    fit: BoxFit.cover,
                    height: 500.0,
                    width: double.infinity,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black26,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        offset: Offset(0, -10), // Shadow position
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(
                    bottom: 12.0,
                    left: 12.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Available Now",
                              style: GoogleFonts.barlow(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              "Watch Twilight",
                              style: GoogleFonts.barlow(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.cyan,
                          elevation: 0.0,
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "The Plot",
                        style: GoogleFonts.barlow(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  RichText(
                    text: TextSpan(
                        style: GoogleFonts.barlow(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                        children: [
                          const TextSpan(
                            text:
                                "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
                          ),
                          TextSpan(
                            text: " see more",
                            style: GoogleFonts.barlow(
                              color: Colors.cyan,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    text: TextSpan(
                        style: GoogleFonts.barlow(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: "Director : ",
                            style: GoogleFonts.barlow(
                              color: Colors.cyan,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                            ),
                          ),
                          const TextSpan(
                            text: "James Cameron",
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  RichText(
                    text: TextSpan(
                        style: GoogleFonts.barlow(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                        children: [
                          TextSpan(
                            text: "Writer : ",
                            style: GoogleFonts.barlow(
                              color: Colors.cyan,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.0,
                            ),
                          ),
                          const TextSpan(
                            text: "James Cameron",
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "The Cast",
                        style: GoogleFonts.barlow(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("lib/movies_ui/assets/image.jpg"),
                    radius: 40.0,
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                ),
                itemCount: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
