import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'splash_screen.dart';  // Ensure this file exists
import 'package:real_estate/search.dart';  // Make sure this file exists and is correctly imported

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chaudhary Real Estates',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.openSansTextTheme(),  // Google Fonts integration
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),  // Show SplashScreen first, then transition to Search
    );
  }
}
