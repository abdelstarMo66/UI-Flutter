import 'package:flutter/material.dart';
import 'package:ui/movies_ui/category/category.dart';
import 'package:ui/movies_ui/home/home.dart';
import 'package:ui/movies_ui/profile/profile.dart';
import 'download/download.dart';

class MovieLayout extends StatefulWidget {
  const MovieLayout({Key? key}) : super(key: key);

  @override
  State<MovieLayout> createState() => _MovieLayoutState();
}

class _MovieLayoutState extends State<MovieLayout> {
  int currentIndex = 0;
  List screens = [
    const HomePage(),
    const CategoryPage(),
    const DownloadPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.black,
        iconSize: 25.0,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_download_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined),
            label: ""
          ),
        ],
      ),
    );
  }
}
