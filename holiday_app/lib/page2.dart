// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:holiday_app/read_more.dart';
import 'package:holiday_app/stack.dart';
import 'package:readmore/readmore.dart';

import 'package:holiday_app/home_page.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 15),
            child: Text(
              '1/7',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset('manarola.jpg'),
          SizedBox(
            height: 10,
          ),
          // place name
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Manarola',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5),
              //rating vs.
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text('4.5 Rating'),
                  Padding(
                    padding: const EdgeInsets.only(left: 225.0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  Text('8.5k')
                ],
              ),
            ],
          ),
          // Image.asset('mapview.png'), bunu koyunca uygulama patlıyor

          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("assets/mapview.png"),
                    fit: BoxFit.cover)),
          ),

          //read more
          Row(
            children: [
              Text(
                'About Trip',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
          Container(
            child: Padding(
              key: const Key('showMore'),
              padding: const EdgeInsets.all(8.0),
              child: ReadMore(),
            ),
          ),

          //sayfanın en altı
          Row(
            children: [
              Icon(
                Icons.attach_money,
                size: 30,
              ),
              Text(
                '770',
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 290.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
