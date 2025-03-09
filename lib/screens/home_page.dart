import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:threads_clone/screens/favorite_screen.dart';
import 'package:threads_clone/screens/feed_screen.dart';
import 'package:threads_clone/screens/post_screen.dart';
import 'package:threads_clone/screens/profile_screen.dart';
import 'package:threads_clone/screens/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> _pages = [
    FeedScreen(),
    SearchScreen(),
    PostScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  PanelController panelController = PanelController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        controller: panelController,
        minHeight: 0,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        panelBuilder: (ScrollController sc) {
          return PostScreen();
        },
        body: _pages[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (index) {
            if (index == 2) {
              panelController.isPanelOpen
                  ? panelController.close()
                  : panelController.open();
            } else {
              panelController.close();
              setState(() {
                selectedIndex = index;
              });
            }
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
