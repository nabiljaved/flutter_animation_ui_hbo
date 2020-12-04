import 'package:flutter/material.dart';
import 'package:ninja_trips/shared/screenTitle.dart';
import 'package:ninja_trips/shared/tripList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/hbo_cover.jpg"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40),
            SizedBox(
              height: 90,
              child: Container(
                child: ScreenTitle(text: 'HBO Max'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                'By : Nabeel',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Flexible(
              child: TripList(),
            )
            //Sandbox(),
          ],
        ),
      ),
    );
  }
}
