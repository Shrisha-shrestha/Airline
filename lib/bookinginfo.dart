import 'package:flutter/material.dart';
class bookinginfo extends StatefulWidget {
  const bookinginfo({Key? key}) : super(key: key);

  @override
  State<bookinginfo> createState() => _bookinginfoState();
}

class _bookinginfoState extends State<bookinginfo> {
  String password='';
  String email='';
  String name='';
  final _formkey = GlobalKey<FormState>();
  void showDataAlert() {
    showDialog(
        barrierColor: Color(0xff2699fb).withOpacity(0.3),
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),

            content: Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.check_outlined,
                      color: Color(0xff2699fb),size: 150.0,),

                    Text('Ticket Booking Successful!',style: TextStyle(
                      color: Color(0xff2699fb),fontSize: 15,
                    ),),
                  
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
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title:Text("BOOKING INFORMATION",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff2699fb),),),
        leading:BackButton(
          onPressed: (){Navigator.pop(context);},
          color: Color(0xff2699fb),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
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

                    Text('Total Luggage    20.00KG',style: TextStyle(
                      color: Color(0xff2699fb),fontSize: 15,
                    ),),



                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Container(
                child: Form(
                  key:_formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text("Fill the informationn and proceed",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2699fb),),),
                        ),

                        SizedBox(height: 20.0,),
                        TextFormField(
                          validator:(val)=>val!.isEmpty ? 'Enter a valid name': null,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.4)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide( color: Theme.of(context).primaryColor),
                            ),
                            labelText: 'Full Name',
                            labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.4)),
                          ),
                          onChanged: (val){
                            setState(()=>name =val);
                          },
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          validator:(val)=> val!.isEmpty ? 'Enter an email': null,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.4)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.4)),
                          ),
                          onChanged: (val){
                            setState(()=>email =val);
                          },
                        ),
                        SizedBox(height: 20.0,),
                        TextFormField(
                          validator:(val)=> val!.length<6 ? 'Enter a  password 6 characters long': null,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.4)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide( color: Theme.of(context).primaryColor),
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.4)),
                          ),
                          obscureText: true,
                          onChanged: (val){
                            setState(()=>password =val);
                          },
                        ),
                        SizedBox(height:30.0,),
                        Text('All the information are correct',
                          style: TextStyle(
                            color: Color(0xff2699fb),
                          ),),
                        SizedBox(height:30.0,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TextButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xff2699fb)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Book Ticket ',style: TextStyle(fontSize: 15.0,color: Colors.white),),
                              ),
                              onPressed: (){
                                showDataAlert();
                              }
                          ),
                        ),



                      ],
                    ),
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
