import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/movies_ui/profile/item_settings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Center(
              child: Text(
                "Profile",
                style: GoogleFonts.barlow(
                  fontWeight: FontWeight.w600,
                  fontSize: 25.0,
                ),
              ),
            ),
            itemSettings(
                icon: Icons.person_outline_outlined, text: "Edit Profile"),
            itemSettings(
                icon: Icons.notifications_none_outlined,
                text: "My Notifications"),
            itemSettings(icon: Icons.remove_red_eye, text: "Watchlist"),
            itemSettings(icon: Icons.language_outlined, text: "Language"),
            itemSettings(icon: Icons.category_outlined, text: "Category"),
            itemSettings(icon: Icons.settings, text: "App Settings"),
            itemSettings(icon: Icons.person_add_outlined, text: "Referrals"),
            itemSettings(icon: Icons.headphones, text: "Feedback & Help"),
            itemSettings(
                icon: Icons.subscriptions_outlined,
                text: "Management Subscriptions"),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Teams of Use",
                  style: GoogleFonts.barlow(
                    color: Colors.cyan,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(width: 5.0,),
                Text(
                  "and",
                  style: GoogleFonts.barlow(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(width: 5.0,),
                Text(
                  "Privacy Policy",
                  style: GoogleFonts.barlow(
                    color: Colors.cyan,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.cyan,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                height: 50.0,
                child: Text(
                  "Sign Out",
                  style: GoogleFonts.barlow(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              color: Colors.grey.withOpacity(0.8),
              height: 1.0,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
