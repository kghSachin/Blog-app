import 'package:chiya_startup/helper/error/bookmark_error.dart';
import 'package:chiya_startup/pages/home/home_page.dart';
import 'package:chiya_startup/pages/post_detail/post_details.dart';
import 'package:chiya_startup/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          HomePage(),
          // SearchEmptyScreen(),
          PostDetailsView(),
          // YoutubeAppDemo(),
          NoBookmark(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: SvgPicture.asset(
                selectedIndex == 0
                    ? "assets/icons/navbar/home_filled.svg"
                    : "assets/icons/navbar/home.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 0 ? Colors.blue : Colors.grey,
                  BlendMode.srcATop,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: SvgPicture.asset(
                selectedIndex == 1
                    ? "assets/icons/navbar/search_filled.svg"
                    : "assets/icons/navbar/search.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 1 ? Colors.blue : Colors.grey,
                  BlendMode.srcATop,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Bookmarks",
              icon: SvgPicture.asset(
                selectedIndex == 2
                    ? "assets/icons/navbar/bookmark_filled.svg"
                    : "assets/icons/navbar/bookmark.svg",
                colorFilter: ColorFilter.mode(
                  selectedIndex == 2 ? Colors.blue : Colors.grey,
                  BlendMode.srcATop,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "Bookmarks",
              icon: CircleAvatar(
                radius: 12,
                backgroundColor: selectedIndex == 3 ? Colors.blue : Colors.grey,
                child: const Center(
                  child: Icon(
                    Icons.person_outline_outlined,
                    size: 20,
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
