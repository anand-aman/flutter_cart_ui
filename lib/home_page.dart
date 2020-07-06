import 'package:flutter/material.dart';
import 'package:qcard_app/qcard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        title: Text('Subscriptions'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Qcard(
              brand: 'Netflix',
              date: '30 MAY',
              myWidget: MyButton(),
              colour: Colors.black,
            ),
            Qcard(
              brand: 'Disney',
              date: '28 MAY',
              myWidget: Text(
                '\$22.00',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              colour: Color(0xFF090c28),
            ),
            Qcard(
              brand: 'Spotify',
              date: '30 JULY',
              myWidget: MyButton(),
              colour: Color(0xFF84d179),
            ),
            Spacer(),
            Container(
              color: Color(0xFF212121),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Total Expenses (Per month)',
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '\$44.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: Colors.deepOrange, borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          'Trial period',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
