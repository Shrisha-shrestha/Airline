import 'dart:async';

import 'package:flutter/material.dart';
import 'ApiService.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<test> {
  @override
    int? len;
  dynamic Val;
   List<String> sectors=[];
  List<String> codes=[];
  void initState() {
       getsectors();
       Timer(Duration(seconds: 5),(){
      Navigator.push(context,
          //HomeScreen(token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjozfSwiaWF0IjoxNjcxNTI3Mzc4LCJleHAiOjE2NzE4ODczNzh9.efUkAQzpU--H0bt_koRqz0ogtqqJX87SeX3ag4QbyZw')

          MaterialPageRoute(builder:(context) => testpage(s:sectors,c: codes))
        );
       }
    );
    super.initState();
  }

  void getsectors()async{
    APIService  apiService = APIService();
    await apiService.sector().then((value){
      len =   value!.data!.flightSector!.sector!.length;
      Val =   value.data!.flightSector!.sector!;
    });
    for(int i=0;i<len!;i++){
      sectors.add("${Val[i].sectorName.join().toString()}");
      codes.add("${Val[i].sectorCode.join().toString()}");
    }
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

class testpage extends StatefulWidget {
List<String>? s;
List<String>? c;
testpage({this.s,this.c});
  @override
  State<testpage> createState() => _testpageState();
}

class _testpageState extends State<testpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text('Click me'),
        onPressed: (){
          print(widget.s);
          print(widget.c);
        },
      ),
    );
  }
}




