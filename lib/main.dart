import 'package:flutter/material.dart';
import 'package:microshieldapp/screens/flashscreen.dart';
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
        // '/login': (context) => login(),
        // '/logup': (context) => logup(),
        // '/home': (context) => home(),
      },
    );
  }
}
