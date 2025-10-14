import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.black45,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Kidstory",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              "We are in Home Page()",
              style: TextStyle(fontSize: 30, color: Colors.blueAccent),
            ),
          ],
        ),
      ),

      drawer: Drawer(),
    );
  }
}
