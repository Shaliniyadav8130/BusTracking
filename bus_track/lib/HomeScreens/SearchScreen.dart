import 'package:bus_track/HomeScreens/Sidebar.dart';
import 'package:bus_track/Maps/MapTiler.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// Gif splash

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF0C414), // Include the sidebar here
      ),
      drawer: CommonSidebar(),
      body: Stack(
        children: [
          Container(
            color: Color(0xffF0C414),
          ),

          MapScreen(),


          Positioned(
            left:0.0,
            right: 0.0,
            bottom: 0.0,
            child:Container(
              height:245.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 16.0,
                    spreadRadius: 0.5,
                    offset: Offset(0.7,0.7),
                  ),
                ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:6.0),
                    Text("Hi there",style: TextStyle(fontSize: 12),),
                    Text("YOUR BUS LOCATION",style: TextStyle(fontSize: 20),),

                    SizedBox(height:20.0),

                Row(
                  children: [
                    Icon(Icons.location_searching_outlined,color: Color(0xffF0C414),),
                    Text("Start:",style: TextStyle(fontSize: 17),),
                    Text("Dharampur",style: TextStyle(fontSize: 17),)
                  ],
                ),
                    SizedBox(height:5),
                    Row(
                      children: [
                        //SizedBox(width: 12,),
                        Icon(Icons.arrow_downward),

                      ],
                    ),
                    SizedBox(height:5),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: Color(0xff000000),),
                        Text("End Point:",style: TextStyle(fontSize: 17),),
                        Text("Ghaziabad",style: TextStyle(fontSize: 17),)
                      ],
                    ),

                  ],
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}