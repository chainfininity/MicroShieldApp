import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 100, 0, 100),
            child: Text(
              'Reset your Password',
              style: TextStyle(
                  color: Colors.blue.shade700,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .80,
            child: TextFormField(
              // onChanged: (val) {
              //   name = val;
              // },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue.shade700,
                  ),
                  labelText: "  New Password",
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .80,
            child: TextFormField(
              // onChanged: (val) {
              //   name = val;
              // },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue.shade700,
                  ),
                  labelText: "  Confirm New Password",
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .8,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                'Reset Password ',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/resetsuccess');
              },
            ),
          ),
        ],
      ),
    );
  }
}
