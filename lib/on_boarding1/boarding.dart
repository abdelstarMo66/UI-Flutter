import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/on_boarding1/boarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  bool lastIndex = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFf7ebe1),
      appBar: AppBar(
        backgroundColor: const Color(0XFFf7ebe1),
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: const Color(0XFFf7ebe1),
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              elevation: 0.0,
            ),
            child: Text(
              "Skip",
              style: GoogleFonts.mavenPro(
                color: const Color(0xFF132137),
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
        backwardsCompatibility: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Color(0XFFf7ebe1),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) => boardingItem(boarding[index]),
                physics: const BouncingScrollPhysics(),
                controller: controller,
                itemCount: boarding.length,
                onPageChanged: (index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      lastIndex = true;
                    });
                  } else {
                    setState(() {
                      lastIndex = false;
                    });
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: SmoothPageIndicator(
                controller: controller, // PageController
                count: boarding.length,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xFF132137),
                  expansionFactor: 2.5,
                ), // your preferred effect
                onDotClicked: (index) {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !lastIndex
                    ? FloatingActionButton(
                  onPressed: () {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.decelerate,
                    );
                  },
                  backgroundColor: const Color(0xFF132137),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                )
                    : MaterialButton(
                  onPressed: () {
                    // todo to navigate to home
                  },
                  color: const Color(0xFF132137),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  height: 50.0,
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.mavenPro(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget boardingItem(BoardingModel model) => Column(
        children: [
          Text(
            model.title,
            style: GoogleFonts.mavenPro(
              color: const Color(0xFF132137),
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            model.subTitle,
            style: GoogleFonts.mavenPro(
              color: Colors.grey,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 35.0,
          ),
          Expanded(
            child: Image.asset(
              model.image,
            ),
          ),
        ],
      );
}
