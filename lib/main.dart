import 'package:flutter/material.dart';
import 'package:microshieldapp/screens/doclogin.dart';
import 'package:microshieldapp/screens/docsignup.dart';
import 'package:microshieldapp/screens/flashscreen.dart';
import 'package:microshieldapp/screens/forgotpassword.dart';
import 'package:microshieldapp/screens/resetpassword.dart';
import 'package:microshieldapp/screens/resetsuccess.dart';
import 'package:microshieldapp/screens/userlogin.dart';
import 'package:microshieldapp/screens/welcome.dart';

void main() {
  runApp(MicroShieldApp());
}

class MicroShieldApp extends StatefulWidget {
  const MicroShieldApp({Key? key}) : super(key: key);

  @override
  State<MicroShieldApp> createState() => _MicroShieldAppState();
}

class _MicroShieldAppState extends State<MicroShieldApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => FlashScreen(),
        '/welcome': (context) => Welcome(),
        '/doclogin': (context) => DocLogin(),
        '/docsignup': (context) => DocSignup(),
        '/userlogin': (context) => UserLogin(),
        '/forgotpassword': (context) => ForgotPassword(),
        '/resetpassword': (context) => ResetPassword(),
        '/resetsuccess': (context) => ResetSuccess(),
      },
    );
  }
}
