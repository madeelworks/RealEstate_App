import 'package:flutter/material.dart';
import 'dart:async';
import 'package:real_estate/search.dart';  // Make sure this file exists

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Start the animation
    _controller.forward();

    // Navigate to the Search screen after the splash screen
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Search()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,  // Set the background color
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
              children: [
                // The full-screen image (gradually scaling up)
                Positioned.fill(
                  child: Transform.scale(
                    scale: _animation.value,  // Scale image from 0 to 1
                    child: Image.asset(
                      'assets/images/ch.png',  // Full screen image
                      fit: BoxFit.cover,  // Ensure the image covers the entire screen
                    ),
                  ),
                ),
                // The smaller logo in the middle before it covers the full screen
                // Center(
                //   child: ScaleTransition(
                //     scale: _animation,  // Apply scale animation
                //     child: Image.asset(
                //       'assets/images/chaudhary.png',
                //       width: 200,  // Initial smaller size
                //       height: 200,
                //     ),
                //   ),
                // ),
              ],
            );
          },
        ),
      ),
    );
  }
}
