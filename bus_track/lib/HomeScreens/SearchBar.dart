import 'package:bus_track/HomeScreens/SearchScreen.dart';
import 'package:bus_track/HomeScreens/Sidebar.dart';
import 'package:bus_track/Maps/MapTiler.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// Gif splash

class SearchAutocompleteScreen extends StatefulWidget {
  @override
  _SearchAutocompleteScreenState createState() => _SearchAutocompleteScreenState();
}

class _SearchAutocompleteScreenState extends State<SearchAutocompleteScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find my Bus",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xffF0C414), // Include the sidebar here
      ),
      drawer: CommonSidebar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child:Container(
                      decoration: BoxDecoration(
                        // Set the background color
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            //controller: _dropController,
                            decoration: InputDecoration(
                              hintText: 'Pick up',
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.my_location_rounded,
                                color: Color(0xffF0C414),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 12,),
                              Icon(Icons.arrow_downward_outlined),
                              SizedBox(width:2),
                              Expanded(
                                  child: Container(
                                    height:2,
                                    width:10,
                                    color: Color(0x33000000),
                                  ),
                              ),

                            ],
                          ),
                          TextFormField(
                            //controller: _pickController,
                            decoration: InputDecoration(
                              hintText: 'Drop off',
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.location_on,
                                color: Colors.black,
                              ),
                              ),
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),

            SizedBox(height:20),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>SearchScreen()
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffF0C414),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        'Find Buses',
                        style: TextStyle(color: Colors.white,fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}