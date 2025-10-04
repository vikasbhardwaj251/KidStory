import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/SplashScreen.dart';

void main() {
  runApp(const Kidstory());
}

class Kidstory extends StatelessWidget {
  const Kidstory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {"/": (context) => SplashScreen()});
  }
}
