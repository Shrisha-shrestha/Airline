import 'package:airline/bookinginfo.dart';
import 'package:flutter/material.dart';

class flights extends StatefulWidget {
  const flights({Key? key}) : super(key: key);

  @override
  State<flights> createState() => _flightsState();
}

class _flightsState extends State<flights> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GestureDetector(
          onTap: (){

            Navigator.push(context,MaterialPageRoute(builder: (context) => bookinginfo()));

          },
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 130.0,
                  color: Color(0xff2699fb).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Yeti Airlines  (ATR72)',style: TextStyle(
                              color: Color(0xff2699fb).withOpacity(0.3),
                            ),),
                            Text('Rs. 4,100',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),

                        Row(
                          children: [
                            Text('06:55',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,),
                              child: Icon(Icons.airplanemode_on_rounded,color:Color(0xff2699fb) ,),
                            ),
                            Text('07:20',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('25 min',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                            SizedBox(width: 40.0,),
                            Text('Class E1',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Luggage    20.00KG',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                            Text('Non - Refundable',style: TextStyle(
                              color: Color(0xff2699fb).withOpacity(0.3),
                            ),),
                          ],
                        ),



                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 130.0,
                  color: Color(0xff2699fb).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Yeti Airlines  (ATR72)',style: TextStyle(
                              color: Color(0xff2699fb).withOpacity(0.3),
                            ),),
                            Text('Rs. 4,100',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),

                        Row(
                          children: [
                            Text('06:55',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,),
                              child: Icon(Icons.airplanemode_on_rounded,color:Color(0xff2699fb) ,),
                            ),
                            Text('07:20',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('25 min',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                            SizedBox(width: 40.0,),
                            Text('Class E1',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Luggage    20.00KG',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                            Text('Non - Refundable',style: TextStyle(
                              color: Color(0xff2699fb).withOpacity(0.3),
                            ),),
                          ],
                        ),



                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 130.0,
                  color: Color(0xff2699fb).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Yeti Airlines  (ATR72)',style: TextStyle(
                              color: Color(0xff2699fb).withOpacity(0.3),
                            ),),
                            Text('Rs. 4,100',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),

                        Row(
                          children: [
                            Text('06:55',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,),
                              child: Icon(Icons.airplanemode_on_rounded,color:Color(0xff2699fb) ,),
                            ),
                            Text('07:20',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('25 min',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                            SizedBox(width: 40.0,),
                            Text('Class E1',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Luggage    20.00KG',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                            Text('Non - Refundable',style: TextStyle(
                              color: Color(0xff2699fb).withOpacity(0.3),
                            ),),
                          ],
                        ),



                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 130.0,
                  color: Color(0xff2699fb).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Yeti Airlines  (ATR72)',style: TextStyle(
                              color: Color(0xff2699fb).withOpacity(0.3),
                            ),),
                            Text('Rs. 4,100',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),

                        Row(
                          children: [
                            Text('06:55',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,),
                              child: Icon(Icons.airplanemode_on_rounded,color:Color(0xff2699fb) ,),
                            ),
                            Text('07:20',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            Text('25 min',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                            SizedBox(width: 40.0,),
                            Text('Class E1',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Luggage    20.00KG',style: TextStyle(
                              color: Color(0xff2699fb),fontSize: 15,
                            ),),
                            Text('Non - Refundable',style: TextStyle(
                              color: Color(0xff2699fb).withOpacity(0.3),
                            ),),
                          ],
                        ),



                      ],
                    ),
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
