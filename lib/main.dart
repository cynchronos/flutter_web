import 'package:flutter/material.dart';
import 'package:website_new/pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Server',
      home: LandingPage(),
    );
  }
}
