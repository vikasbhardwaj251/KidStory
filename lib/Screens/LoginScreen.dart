import 'package:flutter/material.dart';
import 'package:kid_story/Utils/routes.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //variables declaration
  String username = "";
  bool changeBtn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              SizedBox(height: 30),

              Image.asset(
                "assets/images/img_logo.jpg",
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),

              SizedBox(height: 30),

              Text(
                "Welcome $username",
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                maxLength: 30,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  username = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: "Enter Username/Mobile Number",
                  hint: Text("Enter here :"),

                  //normal state
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  //on focus (jb user input field pr click kar raha ho)
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreen),
                    borderRadius: BorderRadius.circular(15),
                  ),

                  //on error
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                obscureText: true,
                maxLength: 30,
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  hintText: "Password : ",

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreen),
                    borderRadius: BorderRadius.circular(25),
                  ),

                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

              SizedBox(height: 20),

              InkWell(
                onTap: () async {
                  setState(() {
                    changeBtn = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  height: changeBtn ? 50 : 50,
                  width: changeBtn ? 50 : 100,
                  alignment: Alignment.center,
                  duration: Duration(seconds: 1),

                  decoration: BoxDecoration(
                    // shape: changeBtn ? BoxShape.circle : BoxShape.rectangle,
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(changeBtn ? 50 : 20),
                  ),
                  child: changeBtn
                      ? Icon(Icons.done, color: Colors.white)
                      : Text(
                          "Login",
                          style: TextStyle(
                            fontSize: changeBtn ? 14 : 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                ),
              ),

              /*
              //button
              ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomeScreen()),
                  // );
                  Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
                  // Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black45, fontSize: 20),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
