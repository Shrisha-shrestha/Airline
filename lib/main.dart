import 'dart:async';
import 'package:airline/home/homescreen.dart';
import 'package:airline/sign/login.dart';
import 'package:flutter/material.dart';


void main() { runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
      theme:  ThemeData(
        snackBarTheme: SnackBarThemeData(
          actionTextColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.push(context,
            MaterialPageRoute(builder:
                (context) => HomeScreen()
            )
        )
    );
  }
  @override

  Widget build(BuildContext context) {
    return Material(

      child: Container(
        height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child:Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:200.0,left: 50.0, right: 50.0,bottom: 100.0),
                  child: SizedBox(height:200.0,width: 200.0,
                      child: Image.asset('assets/logo.jpg',)),
                ),
                const Text('App Name' ,style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Playfair',
                  color: Color(0xff2699fb),
                ),),
                const SizedBox(height: 30.0,),
                const Text('Ut labore et dolore roipi mana aliqua. Enim\n adeop minim veeniam nostruklad' ,
                 textAlign: TextAlign.center,
                  style: TextStyle(
                  fontSize: 15.0,
                  height: 2,
                  color: Color(0xff2699fb),
                ),),
              ],
            ),
          )
      ),
    );
  }
}


