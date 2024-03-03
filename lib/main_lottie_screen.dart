import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:cofeeapp/screens/homescreen.dart';

class LottieScreen extends StatelessWidget {
  const LottieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Start the timer when the widget is built
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the home screen after 3 seconds
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/images/a.json',
            width: 500,
            height: 400,
          ), 
        ],
      ),
    );
  }
}
