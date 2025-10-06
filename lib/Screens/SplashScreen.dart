import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/img_logo.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 30),

            Text(
              "Welcome to KidsStory",
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
