// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, prefer_const_declarations, unused_local_variable, sort_child_properties_last, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:holiday_app/page2.dart';
import 'package:holiday_app/places.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final title = 'Find The Best Place To Travel';
    return Scaffold(
      backgroundColor: Colors.blue[200],
      // appbar
      appBar: AppBar(
        leading: Icon(Icons.menu), // sol üst
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/travel');
              },
              icon: Icon(Icons.chevron_right))
        ], // sağ üst
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 55,
              ),
            ),
          ),
          SizedBox(height: 50),
          // search area
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Place',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
          ),
          SizedBox(height: 20),
          // place list
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: Colors.white,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Places(
                    placeImage: 'manarola.jpg',
                    placeName: 'Manarola',
                    placeRating: '4.5 Rating',
                  ),
                  Places(
                    placeImage: 'kibris.jpg',
                    placeName: 'Kıbrıs',
                    placeRating: '4.5 Rating',
                  ),
                  Places(
                    placeImage: 'labadie.jpeg',
                    placeName: 'Labadie',
                    placeRating: '4.5 Rating',
                  ),
                  Places(
                    placeImage: 'madrid.jpg',
                    placeName: 'Madrid',
                    placeRating: '4.5 Rating',
                  ),
                  Places(
                    placeImage: 'roma.jpg',
                    placeName: 'Roma',
                    placeRating: '4.5 Rating',
                  ),
                  Places(
                    placeImage: 'redangIsland.jpeg',
                    placeName: 'Redang Island',
                    placeRating: '4.5 Rating',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(elevation: 0, items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.orange,
          ),
          label: '', // label zorunlu
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.grey,
          ),
          label: '',
        ),
      ]),
    );
  }
}
