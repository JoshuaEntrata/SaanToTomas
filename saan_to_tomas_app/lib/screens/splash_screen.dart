import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 10),
            // RichText
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const [
                  TextSpan(
                    text: 'Saan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Epilogue',
                    ),
                  ),
                  TextSpan(
                    text: 'ToTomas',
                    style: TextStyle(
                      color: Color(0xFFffd100),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Epilogue',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
