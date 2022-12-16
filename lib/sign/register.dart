import 'package:airline/home/homescreen.dart';
import 'package:airline/sign/login.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  String password='';
  String email='';
  String name='';
  final _formkey = GlobalKey<FormState>();
  void verification() {
    showDialog(
        barrierColor: Color(0xff2699fb).withOpacity(0.3),
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 200,
              width: 450,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Verification',style: TextStyle(
                        color: Color(0xff2699fb),fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                    Text('We have send verification link in your registered email.PLease click on the link for your verification ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                        color: Color(0xff2699fb).withOpacity(0.5),fontSize: 12,
                      ),),

                    GestureDetector(
                      onTap: (){
                        verif_resend();
                      },
                      child: Text('Didn\'t recieve the link? Click here to resend ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff2699fb),fontSize: 12,
                        ),),
                    ),

                    SizedBox(height: 15.0,),
                    GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Text('OK',style: TextStyle(
                          color: Color(0xff2699fb),fontSize: 16,fontWeight: FontWeight.bold
                      ),),
                    ),

                  ],
                ),
              ),
            ),
          );
        });
  }
  void verif_resend() {
    showDialog(
        barrierColor: Color(0xff2699fb).withOpacity(0.3),
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 200,
              width: 450,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Verification email resend.',style: TextStyle(
                        color: Color(0xff2699fb),fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                    Text('We have resend the verification link.\nPLease click on the latest verification link. ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                        color: Color(0xff2699fb).withOpacity(0.5),fontSize: 12,
                      ),),

                    GestureDetector(
                      onTap: (){
                        verif_resend();
                      },
                      child: Text('Didn\'t recieve the link? Click here to resend ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff2699fb),fontSize: 12,
                        ),),
                    ),

                    SizedBox(height: 15.0,),
                    GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child: Text('OK',style: TextStyle(
                          color: Color(0xff2699fb),fontSize: 16,fontWeight: FontWeight.bold
                      ),),
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
        title:Text("REGISTER",
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
        padding: const EdgeInsets.all( 35.0),
        child: Container(
          child: Form(
            key:_formkey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text("Create an Account",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2699fb),),),
                  ),

                  SizedBox(height: 50.0,),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: Text('By creating an account you agree to our\n Terms of Service and Privacy Policy' ,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        height: 2,
                        color: Color(0xff2699fb),
                      ),),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xff2699fb)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('REGISTER ',style: TextStyle(fontSize: 15.0,color: Colors.white),),
                        ),
                        onPressed: (){
                          _formkey.currentState!.validate();
                          verification() ;
                          //showDataAlert();
                        }
                    ),
                  ),

                  SizedBox(height: 35.0,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) => login()
                          )
                      );
                    },
                    child: Text('Already have an account? Click here' ,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        height: 2,
                        color: Color(0xff2699fb),
                      ),),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
