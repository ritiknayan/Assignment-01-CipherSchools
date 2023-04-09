import 'package:cipherschools/constants.dart';
import 'package:cipherschools/courses.dart';
import 'package:cipherschools/home.dart';
import 'package:cipherschools/profile.dart';
import 'package:cipherschools/trending.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageIndex = 0;
  final List<Widget> _tabList = const [
    Home(),
    Courses(),
    Trending(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _tabList.elementAt(_pageIndex),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                 
                  selectedItemColor: kTextColor,
                  unselectedItemColor: Colors.grey,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  currentIndex: _pageIndex,
                  onTap: (int index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.grid_on), label: "Courses"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.explore), label: "Trending"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: "My Profile"),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void showSimpleDialog(BuildContext context) => showDialog(
    context: context,
    builder: (context) {
      return const SimpleDialog(
        // shape: RoundedRectangleBorder(),
        alignment: Alignment(0.0, -0.4),
        children: <Widget>[
          SimpleDialogOption(
            child: Text(
              "Home",
              style: TextStyle(fontSize: 20, color: kTextColor),
            ),
          ),
          SimpleDialogOption(
            child: Text(
              "Creator Access",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SimpleDialogOption(
            child: Text(
              "Live Reviews",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SimpleDialogOption(
            child: Text(
              "Community",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SimpleDialogOption(
            child: Text(
              "Explore Courses",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SimpleDialogOption(
            child: Text(
              "SignIn",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      );
    });
