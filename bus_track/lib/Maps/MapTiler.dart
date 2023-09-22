import "package:flutter/material.dart";
import "package:flutter_map/flutter_map.dart";
import 'package:latlng/latlng.dart';
import "package:http/http.dart" as http;
import 'package:bus_track/api/ApiKey.dart';
import "dart:convert" as convert;

class MapScreen extends StatelessWidget {
  //final String apiKey = "CsxtK3l4J61H2zeOzlanGr6gZFbsnyqH";
  @override
  Widget build(BuildContext context) {
    final tomtomHQ = LatLng(22.5937, 78.9629);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                //center: tomtomHQ, // Use the correct LatLng class
                zoom: 3.2,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://api.tomtom.com/map/1/tile/basic/main/{z}/{x}/{y}.png?key=$tomTomApiKey',
                  subdomains: ['a', 'b', 'c'], // Use subdomains as needed
                  userAgentPackageName: 'com.example.app',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
