import 'package:flutter/material.dart';
import 'pages/onboarding_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scouting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // You can customize the theme further if needed
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnboardingPage(), // Make sure this is the correct path for OnboardingPage
    );
  }
}
