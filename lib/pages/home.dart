import 'package:flutter/material.dart';
import 'package:flutter_app/pages/category.dart';
import 'package:flutter_app/pages/discovery.dart';
import 'package:flutter_app/pages/profile.dart';
import 'package:flutter_app/pages/search.dart';
import 'package:flutter_app/pages/today.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  List<Widget> _pages = [
    TodayPage(),
    Category(),
    DiscoverPage(),
    SearchPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('HomePage'),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: _pages[_index],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                ),
                title: Text(
                  "Today",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.category,
                ),
                title: Text(
                  'Category',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                ),
                title: Text(
                  'Discover',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                title: Text(
                  'Search',
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.featured_play_list,
                ),
                title: Text(
                  'Profile',
                )),
          ],
        ),
      ),
    );
  }
}
