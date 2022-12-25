import 'package:airline/bookinginfo.dart';
import 'package:airline/sign/login.dart';
import 'package:flutter/material.dart';
class flightsearch extends StatefulWidget {
  List<String>? code;
  int? l,g,a,c;
  String? d,r;
  flightsearch({ this.code,this.l,this.g,this.d,this.r,this.a,this.c});
  @override
  State<flightsearch> createState() => _flightsearchState();
}

class _flightsearchState extends State<flightsearch>with TickerProviderStateMixin {
  @override
     Widget build(BuildContext context) {
    TabController _tabcontrol = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title:Text("AVAILABLE TICKETS",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff2699fb),),),
            leading:BackButton(
              onPressed: (){Navigator.pop(context);},
          color: Color(0xff2699fb),
        ),
      ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 85.0,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset('assets/arrow.jpg',height: 60.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${widget.code![widget.l!]}',style: TextStyle(
                                color: Color(0xff2699fb),
                                fontSize:20.0,
                              ),),
                              Text('${widget.code![widget.g!]}',style: TextStyle(
                                color: Color(0xff2699fb),
                                fontSize:20.0,
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(width:MediaQuery.of(context).size.width *0.27 ,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('${widget.d}',style: TextStyle(
                        color: Color(0xff2699fb),
                        fontSize:14.0,
                      ),),
                      Row(
                        children: [
                          Text('${widget.a} Adult',style: TextStyle(
                            color: Color(0xff2699fb),
                            fontSize:14.0,
                          ),),
                          if(widget.c!=null)...[
                            SizedBox(width: 10.0,),
                            Text('${widget.c} children',style: TextStyle(
                              color: Color(0xff2699fb),
                              fontSize:14.0,
                            ),),                          ]
                        ],
                      ),
                    ],
                  ),
                ],
              ),
           ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Date',style: TextStyle(
                  color: Color(0xff2699fb),
                  fontSize: 12.0
              ),),
            ),

            TabBar(
              controller: _tabcontrol,
              labelPadding: EdgeInsets.only(left: 20,right:20),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              overlayColor: MaterialStateColor.resolveWith((Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.blue;
                } if (states.contains(MaterialState.focused)) {
                  return Colors.orange;
                } else if (states.contains(MaterialState.hovered)) {
                  return Colors.pinkAccent;
                }

                return Colors.transparent;
              }),
              tabs: [
                Tab(text: '21 Dec',),
                Tab(text: '22 Dec',),
                Tab(text: '23 Dec',),
              ],
            ),

          Container(
            padding: EdgeInsets.only(bottom: 15.0),
              height: 58.0,
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   width: 50.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                       border: Border.all(width: 2, color:  Color(0xff2699fb).withOpacity(0.3),
                  ),),
                   child: IconButton(onPressed: (){},
                       icon: Icon(Icons.arrow_back_ios_new,color: Color(0xff2699fb),size: 15.0,)),
                 ),

                 Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10)),
                     color: Color(0xff2699fb).withOpacity(0.3),

                   ),
                   width: 60.0,
                   child: Center(child: Text('21 Dec',style: TextStyle(color: Colors.blue,fontSize: 15.0),)),
                 ),
                 Container(
                   width: 60.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     color: Color(0xff2699fb),
                   ),
                   child: Center(child: Text('22 Dec',
                     style: TextStyle(color: Colors.white,fontSize: 15.0),)),
                 ),
                 Container(
                   width: 60.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     color: Color(0xff2699fb).withOpacity(0.3),

                   ),
                   child: Center(child: Text('23 Dec',style: TextStyle(color: Colors.blue,fontSize: 15.0),)),
                 ),


                 Container(
                   width: 50.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     border: Border.all(width: 2, color:  Color(0xff2699fb).withOpacity(0.3),
                     ),),
                   child: IconButton(onPressed: (){},
                       icon: Icon(Icons.arrow_forward_ios,color: Color(0xff2699fb),size: 15.0,)),
                 ),
               ],
             )
          ),

            Expanded(
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
            ),

          ],
        ),
    ),
      );
  }
}
