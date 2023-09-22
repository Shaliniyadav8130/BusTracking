import 'package:bus_track/HomeScreens/HomeScreen.dart';
import 'package:bus_track/HomeScreens/SearchBar.dart';
import 'package:flutter/material.dart';

class CommonSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffF0C414),
            ),
            child: Text(
              'Find my Bus',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.roundabout_left_outlined),
            title: Text('Routes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchAutocompleteScreen(),
                ),
              );},
          ),
        ],
      ),
    );
  }
}
