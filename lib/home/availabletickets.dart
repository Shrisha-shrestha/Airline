import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../widget/flightondate.dart';

class flightsearch extends StatefulWidget {
  List<String>? code;
  int? l,g,a,c;
  DateTime? d,r;
  flightsearch({ this.code,this.l,this.g,this.d,this.r,this.a,this.c});
  @override
  State<flightsearch> createState() => _flightsearchState();
}

class _flightsearchState extends State<flightsearch>with TickerProviderStateMixin {

  int _tabIndex = 1;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this,initialIndex: _tabIndex);

  }
  void _toggleTabright() {
    _tabIndex = _tabController.index + 1;
    _tabController.animateTo(_tabIndex);
  }
  void _toggleTableft() {
    _tabIndex = _tabController.index - 1;
    _tabController.animateTo(_tabIndex);
  }
  @override
     Widget build(BuildContext context) {
    DateTime? departure =widget.d;
    DateTime? ret = widget.r;
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
                      Text(DateFormat('dd MMM yyyy ').format(departure!),style: TextStyle(
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
                   child: IconButton(onPressed: (){
                     _toggleTableft();
                   },
                       icon: Icon(Icons.arrow_back_ios_new,color: Color(0xff2699fb),size: 15.0,)),
                 ),

                 TabBar(
                   controller: _tabController,
                   labelPadding: EdgeInsets.only(left: 20,right:20),
                   labelColor: Colors.white,
                   unselectedLabelColor: Colors.white,
                   indicatorSize: TabBarIndicatorSize.label,
                   isScrollable: true,
                   indicator: BoxDecoration(
                       borderRadius: BorderRadius.circular(10), // Creates border
                       color: Colors.blue),
                   tabs: [
                     Tab(
                       child:  Container(
                         width: 60.0,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           color: Color(0xff2699fb).withOpacity(0.5),
                         ),
                         child: Center(child: Text(DateFormat('dd MMM').format(departure.subtract(Duration(days:1))),
                       ),),
                     ),),
                     Tab(
                       child:  Container(
                         width: 60.0,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           color: Color(0xff2699fb).withOpacity(0.5),
                         ),
                         child: Center(child: Text(DateFormat('dd MMM').format(departure)
                         ),),
                       ),),
                     Tab(
                       child:  Container(
                         width: 60.0,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           color: Color(0xff2699fb).withOpacity(0.5),
                         ),
                         child: Center(child: Text(DateFormat('dd MMM').format(departure.add(Duration(days:1))),
                         ),),
                       ),),
                   ],
                 ),

                 Container(
                   width: 50.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                     border: Border.all(width: 2, color:  Color(0xff2699fb).withOpacity(0.3),
                     ),),
                   child: IconButton(onPressed: (){
                     _toggleTabright();
                   },
                       icon: Icon(Icons.arrow_forward_ios,color: Color(0xff2699fb),size: 15.0,)),
                 ),
               ],
             )
          ),


            Expanded(
              child: Container(
                child: TabBarView(
                          controller: _tabController,
                          children: const <Widget>[
                            Center(
                              child: flights(),
                            ),
                            Center(
                              child: flights(),
                            ),
                            Center(
                              child: flights(),
                            ),
                          ],
                        ),
              ),
            ),

          ],
        ),
    ),
      );
  }
}
