import 'package:flutter/material.dart';

class Qcard extends StatelessWidget {
  final String brand;
  final String date;
  final Widget myWidget;
  final Color colour;

  Qcard({this.brand, this.date, this.myWidget, this.colour});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour,
      margin: EdgeInsets.all(10.0),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 80.0,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 60.0,
              width: 60.0,
              child: Image.asset(
                'images/$brand.png',
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              brand,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              height: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    date,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  myWidget,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
