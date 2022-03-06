import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FlashScreen extends StatefulWidget {
  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  void navigateToNextScreen() {
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushNamed(context, '/welcome');
    });
  }

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          constraints: BoxConstraints.expand(),
          decoration: new BoxDecoration(color: Colors.white),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(75, 50, 0, 0),
              //padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text(
                'Here You Can Trust',
                //textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue[700],
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 170,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(75, 50, 0, 0),
              //padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text(
                'Micro Shield',
                style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                          color: Colors.blue.withOpacity(0.3),
                          offset: Offset(0, 5),
                          blurRadius: 5)
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(75, 0, 0, 0),
              //padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text(
                'Health',
                style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                          color: Colors.blueAccent.withOpacity(0.3),
                          offset: Offset(0, 5),
                          blurRadius: 5)
                    ]),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
