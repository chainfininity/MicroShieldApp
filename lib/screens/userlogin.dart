import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 110, 0, 0),
                //color: Colors.amber,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.blue.shade700),
                  //color: Colors.blue[700],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.1,
                padding: EdgeInsets.fromLTRB(65, 10, 5, 0),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.blue.shade700, fontSize: 30),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      /*  decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 20,
                                offset: const Offset(0, 20),
                              )
                            ]),*/
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
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      /* decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius: 20,
                                offset: const Offset(0, 20),
                              )
                            ]),*/
                      width: MediaQuery.of(context).size.width * .80,
                      child: TextFormField(
                        obscureText: true,
                        //onChanged: (){},
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.blue.shade700,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: Colors.blue.shade700,
                            ),
                            labelText: "  Enter Password",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(180, 5, 0, 0),
                        child: new InkWell(
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.blue.shade700),
                          ),
                          onTap: () =>
                              Navigator.pushNamed(context, '/forgotpassword'),
                        )),
                  ],
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            /*decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20,
                      offset: const Offset(0, 20),
                    )
                  ]),*/
            width: MediaQuery.of(context).size.width * .8,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(
                'Login ',
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                //color: Colors.amber,
                child: Text('__________________'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                //color: Colors.amber,
                child: Text('OR'),
              ),
              Container(
                //color: Colors.amber,
                child: Text('__________________'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
            // ignore: deprecated_member_use
            child: RaisedButton(
                padding: EdgeInsets.all(1.0),
                color: const Color(0xffffffff),
                onPressed: () async {
                  // _signInWithGoogle();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        'lib/assets/images/googleLogo.png',
                        height: 18.0,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: new Text(
                          "Log in with Google",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(80, 0, 0, 50),
                  child: Text(
                    "Dont have an Account?",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                    child: new InkWell(
                      child: Text(
                        " Sign up",
                        style: TextStyle(color: Colors.blue.shade700),
                      ),
                      onTap: () => Navigator.pushNamed(context, '/docsignup'),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
