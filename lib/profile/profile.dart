import 'package:airline/profile/edit.dart';
import 'package:airline/profile/invoice.dart';
import 'package:airline/profile/issued_tickets.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
String fname;
String  lname;
String email;
profile({required this.fname,required this.lname,required this.email});
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  void showDataAlert(){
    showDialog(
        barrierColor: Color(0xff2699fb).withOpacity(0.3),
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 300,
              width: 350.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Upload your document',
                    style: TextStyle(
                      color: Color(0xff1699fb),
                      fontWeight: FontWeight.bold,
                    ),),

                    SizedBox(height: 30.0,),
                    TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.4)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide( color: Theme.of(context).primaryColor),
                        ),
                        labelText: 'Enter Document Name',
                        labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.4)),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 50.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xff2699fb).withOpacity(0.5))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Select Document',
                              style:TextStyle(color: Color(0xff2699fb).withOpacity(0.4))),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xff2699fb)),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 7.0),
                            child: Text( 'Upload',
                              style: TextStyle(color: Colors.white,fontSize: 12.0),)
                        ),
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
        title:Text("PROFILE",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff2699fb),),),
        leading:BackButton(
          onPressed: (){Navigator.pop(context);},
          color: Color(0xff2699fb),
        ),
        actions: [Padding(padding: EdgeInsets.only(right: 15.0),
        child:IconButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(
                builder: (context) => edit()));

          },
            icon:Icon(Icons.edit,color:Color(0xff2699fb) ,)
        )
          ,)],
      ),
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(22.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  //height: 62.0,
                  height: MediaQuery.of(context).size.height*0.08,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 28.0 ,
                        backgroundImage:  AssetImage('assets/pp.png',),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("${widget.fname} ${widget.lname}",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2699fb),),),
                          Text("${widget.email}",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff2699fb),),),
                        ],
                      ),
                    ],
                  ),
                ),
                 TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(0xff2699fb)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(width: 2, color: Color(0xff2699fb),),
              ),
            ),
          ),
          onPressed: () {
            showDataAlert();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 7.0),
            child: Text( 'Add Documents',
              style: TextStyle(color: Colors.white,fontSize: 12.0),)
          ),
        ),
                    ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) => issuedtickets()
                        )
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.14,
                    width: MediaQuery.of(context).size.width*0.42,
                    padding:EdgeInsets.all(30.0),
                    color:Color(0xff2699fb).withOpacity(0.1) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('14',style: TextStyle(
                          color: Color(0xff2699fb),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),),
                        Text('Issued Tickets',style: TextStyle(
                          color: Color(0xff2699fb),
                          fontSize: 17.0,
                        ),),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context) => invoice()
                        )
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height *0.14,
                    width: MediaQuery.of(context).size.width*0.35,
                    padding:EdgeInsets.all(30.0),
                    color:Color(0xff2699fb).withOpacity(0.1) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('8',style: TextStyle(
                          color: Color(0xff2699fb),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),),
                        Text('Invoices',style: TextStyle(
                          color: Color(0xff2699fb),
                          fontSize: 17.0,
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
              )
          ],
        ),
      ),
    );
  }
}
