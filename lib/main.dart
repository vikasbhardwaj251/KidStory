import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kid_story/Screens/HomeScreen.dart';
import 'package:kid_story/Screens/LoginScreen.dart';

import 'Screens/SplashScreen.dart';

void main() {
  runApp(Kidstory());
}

class Kidstory extends StatelessWidget {
  const Kidstory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,

      initialRoute: "/HomeScreen",

      routes: {
        "/": (context) => SplashScreen(),
        "/LoginScreen": (context) => LoginScreen(),
        "/HomeScreen": (context) => HomeScreen(),
      },

      //light theme ke lea yaha property di hai
      theme: ThemeData(primarySwatch: Colors.lightGreen),

      //yaha humne dark theme ki property define ki hai
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
    );
  }
}
