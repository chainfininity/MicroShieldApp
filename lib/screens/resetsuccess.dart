import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ResetSuccess extends StatefulWidget {
  const ResetSuccess({Key? key}) : super(key: key);

  @override
  State<ResetSuccess> createState() => _ResetSuccessState();
}

class _ResetSuccessState extends State<ResetSuccess> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 125, 25, 100),
            child: Text(
              "Successfully password reset!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue.shade700,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Text(
              'You can now use your password to log in to your account!',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            width: MediaQuery.of(context).size.width * .8,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text(
                'Login ',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/doclogin');
              },
            ),
          ),
        ],
      ),
    );
  }
}
