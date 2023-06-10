import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/movies_ui/download/item_download.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              Center(
                child: Text(
                  "Downloads",
                  style: GoogleFonts.barlow(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                  ),
                ),
              ),
              const SizedBox(height: 15.0,),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => itemDownload(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10.0,
                  ),
                  itemCount: 7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
