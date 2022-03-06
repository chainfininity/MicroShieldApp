import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Image.asset('lib/assets/images/forgotpwd.PNG'),
          ),
          Container(
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                  color: Colors.blue.shade700,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text(
              "Don't worry! It happens!",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                //fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .80,
            child: TextFormField(
              // onChanged: (val) {
              //   name = val;
              // },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blue.shade700,
                  ),
                  labelText: "  Enter Email",
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          SizedBox(
            height: 50,
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
                'Submit ',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
