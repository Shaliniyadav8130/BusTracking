import 'package:bus_track/HomeScreens/SearchBar.dart';
import 'package:bus_track/HomeScreens/SearchScreen.dart';
import 'package:bus_track/HomeScreens/Sidebar.dart';
import 'package:bus_track/Maps/MapTiler.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// Gif splash

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find my Bus",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xffF0C414), // Include the sidebar here
      ),
      drawer: CommonSidebar(),
      body: Stack(
        children: [
          Container(
            color: Color(0xffF0C414),
          ),

          MapScreen(),

          Padding(
            padding: EdgeInsets.only(left:15,right:15,top:20),
            child:Positioned(
              left:0.0,
              right: 0.0,
              top: 30.0,
              child:InkWell(
                onTap:(){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchAutocompleteScreen(),
                    ),
                  );
              },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10.0,
                            spreadRadius: 0.2,
                            offset: Offset(0.2,0.2),
                          ),
                        ]
                    ),

                    child:Padding(
                      padding: EdgeInsets.all(12.0),
                      child:Row(
                        children: [
                          Icon(Icons.search,color: Color(0xffF0C414),),
                          SizedBox(width:10),
                          Text("Search Destination")
                        ],
                      ),
                    ),

                  ),


              ),

            ),

          ),

        ],
      ),
    );
  }
}