import 'dart:async';

import 'package:airline/ApiService.dart';
import 'package:airline/bookinginfo.dart';
import 'package:airline/home/homescreen.dart';
import 'package:airline/model/login_model.dart';
import 'package:airline/sign/register.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String password='';
  String email='';
 GlobalKey<FormState> _formkey = GlobalKey<FormState>();
 late PwResetRequestModel pwrequestModel;
 late LoginRequestModel requestModel;
 @override
 int? len;
  dynamic Val;
  List<String> sectors=[];
  List<String> codes=[];
  void initState() {
    getsectors();
    requestModel = new LoginRequestModel();
    pwrequestModel = new PwResetRequestModel();
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

  void pwreset() {
    showDialog(
        barrierColor: Color(0xff2699fb).withOpacity(0.3),
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Password Reset',style: TextStyle(
                      color: Color(0xff2699fb),fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                    Text('We have send password reset link in ${pwrequestModel.email}.Please click on the lnk for resetting your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 2.0,
                      color: Color(0xff2699fb).withOpacity(0.5),fontSize: 15,
                    ),),

                    GestureDetector(
                      onTap: (){
                        verif_resend();
                        Future.delayed(const Duration(milliseconds: 1000), () {
                          Navigator.pop(context);
                        });
                      },
                      child: Text('\nDidn\'t recieve the link? Click here to resend ',
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
                    Text('User still needs verification',style: TextStyle(
                        color: Color(0xff2699fb),fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                    Text('Your email is still not validated.\n Please check your email and click on the link ',
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
                      Future.delayed(const Duration(milliseconds: 1000), () {
                        Navigator.pop(context);
                      });
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
        title:Text("LOGIN",
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
                    child: Text("Login to your account",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2699fb),),),
                  ),

                  SizedBox(height: 50.0,),

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
                      pwrequestModel.email =val;
                    },
                    onSaved: (input ){
                      requestModel.email =input;

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
                    onSaved: (input ){
                      requestModel.password =input;
                    },
                    onChanged: (val){
                      setState(()=>password =val);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onTap: (){


                        APIService  apiService = new APIService();
                        apiService.reset(pwrequestModel).then((value)async{
                          value.fold(
                                (l) {
                                  pwreset();
                                  Future.delayed(const Duration(milliseconds: 2500), () {
                                    Navigator.pop(context);
                                  });
                              final snackBar = SnackBar(
                                  backgroundColor: Color(0xff2699fb),
                                  content:Text(' ${l.msg.toString()}\nYour code is :  ${l.code.toString()}'));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                                (r) {
                              final snackBar = SnackBar(
                                  backgroundColor: Color(0xff2699fb),
                                  content:Text('${r.Errors?[0].msg}'));
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);

                            },
                          );
                        }
                        );

                      },
                      child: Text('Forgot your password ? Click here' ,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.0,
                          height: 2,
                          color: Color(0xff2699fb),
                        ),),
                    ),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Color(0xff2699fb)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('LOGIN ',style: TextStyle(fontSize: 15.0,color: Colors.white),),
                        ),
                        onPressed: (){
                          if(validateandsave()){
                            APIService  apiService = new APIService();
                            apiService.login(requestModel).then((value)async{
                             value.fold(
                                    (l) {

                                        final snackBar = SnackBar(
                                          backgroundColor: Color(0xff2699fb),
                                          content:Text('Welcome ${l.user1?.firstName.toString()} ${l.user1?.lastName.toString()}'));
                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                            verification();
                                            Timer(const Duration(seconds: 5), (){
                                              Navigator.push(context,
                                                    MaterialPageRoute(builder:
                                                    (context) => HomeScreen(s:sectors,c: codes,token: l.token.toString(),)
                                                )
                                            );}
                                        );


                                },
                                    (r) {
                                      final snackBar = SnackBar(
                                        backgroundColor: Color(0xff2699fb),
                                          content:Text('${r.Errors?[0].msg}'));
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                    },
                              );
                            }
                              );
                         }
                        }
                    ),
                  ),

                  SizedBox(height: 35.0,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) => register()
                          )
                      );
                    },
                    child: Text('Don\'t have an account? Click here' ,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.0,
                        height: 2,
                        color: Color(0xff2699fb),
                      ),),
                  ),
                  
                  //Not verified pop up

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool validateandsave(){
    final form = _formkey.currentState!;
    if(form.validate()){
      form.save();
     return true;
    }
    else{
      return false;
    }
  }

}

