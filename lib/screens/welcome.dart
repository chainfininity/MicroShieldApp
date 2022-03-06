import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Welcome extends StatefulWidget {
  //const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
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
            // Container(
            //   child: Text(
            //     'Welcome!',
            //     style: TextStyle(color: Colors.blue[700]),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 150, 0, 0),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.25,
              //color: Colors.amber,
              child: IconButton(
                icon: Image.asset('lib/assets/images/docLogin.PNG'),
                iconSize: 50,
                onPressed: () {
                  Navigator.pushNamed(context, '/doclogin');
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.25,
              //color: Colors.amber,
              child: IconButton(
                icon: Image.asset('lib/assets/images/userLogin.PNG'),
                iconSize: 50,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
