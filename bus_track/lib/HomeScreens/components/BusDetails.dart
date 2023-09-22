import 'package:flutter/material.dart';

class BusDetailsScreen extends StatefulWidget {

  const BusDetailsScreen({Key? key}) : super(key: key);
  @override
  _BusDetailsScreenState createState() => _BusDetailsScreenState();
}

class _BusDetailsScreenState extends State<BusDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child:Container(
                height:180,
                //width:70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color(0xffF0C414), // Set the border color
                    width: 2.0, // Set the border width
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Current Location:Dadri"),
                      Text("ETA:"),
                      Text("Last stop:"),
                      Text("Next stop:"),
                      Text("Bus number:"),
                      Text("Bus conductor:"),
                      Text("Fuel type:")
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