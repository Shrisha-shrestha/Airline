import 'package:airline/bookinginfo.dart';
import 'package:flutter/material.dart';
class invoice extends StatefulWidget {
  const invoice({Key? key}) : super(key: key);

  @override
  State<invoice> createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
  void showDataAlert() {
    showDialog(
      barrierColor: Color(0xff2699fb).withOpacity(0.3),
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 450,
              width: 350.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('#8451',style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff2699fb).withOpacity(0.3),
                    ),),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text('Company Name',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2699fb),
                    ),),),

                    Text('Tinkune, Kathmandu',style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xff2699fb).withOpacity(0.3),
                    ),),

                    Text('01 - 654123',style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xff2699fb).withOpacity(0.3),
                    ),),

                    Text('company@email.com',style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xff2699fb).withOpacity(0.3),
                    ),),

                    Container(
                      padding: EdgeInsets.all(22.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Particulars',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2699fb),
                          ),),

                          Text('Cost',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2699fb),
                          ),),
                        ],
                      ),
                    ),

                    Expanded(
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Container(
                              height: 70.0,
                              color: Color(0xff2699fb).withOpacity(0.1),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Lorem ipsum',style: TextStyle(
                                        color: Color(0xff2699fb),fontSize: 12.0,fontWeight: FontWeight.bold
                                    ),),
                                    Text('Rs. 2,100',style: TextStyle(
                                        color: Color(0xff2699fb),fontSize: 12.0,fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Container(
                              height: 70.0,
                              color: Color(0xff2699fb).withOpacity(0.1),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Lorem ipsum',style: TextStyle(
                                        color: Color(0xff2699fb),fontSize: 12.0,fontWeight: FontWeight.bold
                                    ),),
                                    Text('Rs. 2,100',style: TextStyle(
                                        color: Color(0xff2699fb),fontSize: 12.0,fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(22.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2699fb),
                          ),),

                          Text('Rs. 4100',style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2699fb),
                          ),),
                        ],
                      ),
                    ),
                    ],
                ),
              ),
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title:Text("Invoices",
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
        padding: EdgeInsets.only(top: 20.0,right: 30.0,left: 30.0),
        child: GestureDetector(
          onTap: (){
            showDataAlert();
          },
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 70.0,
                  color: Color(0xff2699fb).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('#8451',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                            Text('Rs. 4,100',style: TextStyle(
                                color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 70.0,
                  color: Color(0xff2699fb).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('#8451',style: TextStyle(
                            color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                        ),),
                        Text('Rs. 4,100',style: TextStyle(
                            color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 70.0,
                  color: Color(0xff2699fb).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('#8451',style: TextStyle(
                            color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                        ),),
                        Text('Rs. 4,100',style: TextStyle(
                            color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 70.0,
                  color: Color(0xff2699fb).withOpacity(0.1),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('#8451',style: TextStyle(
                            color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                        ),),
                        Text('Rs. 4,100',style: TextStyle(
                            color: Color(0xff2699fb),fontSize: 15.0,fontWeight: FontWeight.bold
                        ),),
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
