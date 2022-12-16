import 'package:flutter/material.dart';

class edit extends StatefulWidget {
  const edit({Key? key}) : super(key: key);

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        title:Text("Edit Profile",
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
        padding: EdgeInsets.only(top: 35.0,right: 50.0,left: 50.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Theme.of(context).primaryColor),
                ),
                labelText: 'John Doe',
                labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.7)),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Theme.of(context).primaryColor),
                ),
                labelText: 'San Francisco, CA',
                labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.7)),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Theme.of(context).primaryColor),
                ),
                labelText:'San Francisco, CA',
                labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.7)),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Theme.of(context).primaryColor),
                ),
                labelText: 'Attribute goes here',
                labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.7)),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Theme.of(context).primaryColor),
                ),
                labelText: 'Attribute goes here',
                labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.7)),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Color(0xff2699fb).withOpacity(0.7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Theme.of(context).primaryColor),
                ),
                labelText: 'Attribute goes here',
                labelStyle: TextStyle(color: Color(0xff2699fb).withOpacity(0.7)),
              ),
            ),


            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff2699fb)),
                ),
                onPressed: () {
                  // showDataAlert();
                },
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 7.0),
                    child: Text( 'Update profile',
                      style: TextStyle(color: Colors.white,fontSize: 12.0),)
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.17,)
          ],
        )
      ),
    );
  }
}
