import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class DocSignup extends StatefulWidget {
  const DocSignup({Key? key}) : super(key: key);

  @override
  State<DocSignup> createState() => _DocSignupState();
}

class _DocSignupState extends State<DocSignup> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 20, 0, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.white,
              ),
              child: Text(
                "<",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue.shade700,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(
              "Create your account",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue.shade700,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Text(
              "Fill your basic details to get started",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
          ),
          Container(
            child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: MediaQuery.of(context).size.width * .80,
                      child: TextFormField(
                        // onChanged: (val) {
                        //   name = val;
                        // },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue.shade700,
                            ),
                            labelText: "  Enter UserName",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
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
                            labelText: "  Password",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: MediaQuery.of(context).size.width * .80,
                      child: TextFormField(
                        // onChanged: (val) {
                        //   name = val;
                        // },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.broken_image_sharp,
                              color: Colors.blue.shade700,
                            ),
                            labelText: "  Specialization",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: MediaQuery.of(context).size.width * .80,
                      child: TextFormField(
                        // onChanged: (val) {
                        //   name = val;
                        // },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.code,
                              color: Colors.blue.shade700,
                            ),
                            labelText: "  Pincode",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          width: MediaQuery.of(context).size.width * .4,
                          child: TextFormField(
                            // onChanged: (val) {
                            //   name = val;
                            // },
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.pin_drop,
                                  color: Colors.blue.shade700,
                                ),
                                labelText: "  State",
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                          width: MediaQuery.of(context).size.width * .4,
                          child: TextFormField(
                            // onChanged: (val) {
                            //   name = val;
                            // },
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.location_city,
                                  color: Colors.blue.shade700,
                                ),
                                labelText: "  City",
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                )),
          ),
          Container(
            child: Text(
              "By clicking on register, you agree with our terms and conditions for privacu policy",
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            width: MediaQuery.of(context).size.width * .8,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                'Sign Up ',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () {
                //Navigator.pushReplacement(context, '/home');
                //Navigator.pushNamed(context, '/home');
              },
            ),
          ),
        ],
      ),
    );
  }
}
