import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideDownloader extends StatefulWidget {
  const SlideDownloader({Key? key}) : super(key: key);

  @override
  State<SlideDownloader> createState() => _SlideDownloaderState();
}

class _SlideDownloaderState extends State<SlideDownloader> {
  double fullSize = 25.0;
  double currentSize = 10.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "${currentSize.toString()}MB",
              style: GoogleFonts.barlow(
                color: Colors.cyan,
                fontWeight: FontWeight.w500,
                fontSize: 15.0,
              ),
            ),
            Text(
              "${fullSize.toString()}MB",
              style: GoogleFonts.barlow(
                color: Colors.cyan,
                fontWeight: FontWeight.w500,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;
            double currentWidth = (width*currentSize)/fullSize;
            return Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  height: 4.0,
                  width: width,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  height: 4.0,
                  width: currentWidth,
                  color: Colors.cyan,
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
