import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/authentication/auth_screen.dart';
import 'package:food_app/global/global.dart';
import 'package:food_app/mainscreens/home_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    
    Timer(Duration(seconds:3), () async {
      //if seller is logged in or not
      if(firebaseAuth.currentUser!=null){
 Navigator.push(context, MaterialPageRoute(builder: (c) => HomeScreen()));
      }
     else{
       Navigator.push(context, MaterialPageRoute(builder: (c) => authscreen()));
     }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/splash.png"),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sellers APP",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: "Signatra",
                    letterSpacing: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
