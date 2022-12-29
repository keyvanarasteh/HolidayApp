// ignore_for_file: prefer_const_constructors, unnecessary_import, non_constant_identifier_names, use_key_in_widget_constructors, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Places extends StatelessWidget {
  const Places(
      {super.key,
      required this.placeImage,
      required this.placeName,
      required this.placeRating});

  final String placeImage;
  final String placeName;
  final String placeRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // place image
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(placeImage)),

            // place name
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                placeName,
                style: TextStyle(fontSize: 20),
              ),
            ),
            // place Rating
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                ),
                Text(
                  placeRating,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
