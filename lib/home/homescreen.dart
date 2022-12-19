import 'package:airline/ApiService.dart';
import 'package:airline/home/availabletickets.dart';
import 'package:airline/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
String token;
HomeScreen({required this.token});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? val = -1;
  String dropdownvalue1 = 'Select Location';
  String dropdownvalue2 = 'Select Location';
  String dropdownvalue3 = 'Select Date';
  String dropdownvalue4 = 'Select Date';
  int dropdownvalue5 = 1;
  int dropdownvalue6 = 1;



  var childrens =[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  var districts =['Select Location','Taplejung', 'Phidim','Ilam', 'Chandragadi', 'Morang', 'Inaruwa', 'Dhankutta', 'Khandbari', 'Bhojpur', 'Terhathum', 'Okhaldunga', 'Diktel',
    'Solusalleri', 'Gaighat', 'Rajbiraj', 'Siraha', 'Dhanusa', 'Jaleswor', 'Malangwa', 'Sindhuligadi', 'Manthali', 'Charikot', 'Sindhupalchauk', 'Dhulikhel',
    'Lalitpur', 'Bhaktapur', 'Kathmandu', 'Bidur', 'Dhunche', 'Dhadingbeshi', 'Makwanpur', 'Gaur', 'Bharatpur', 'Gorkha', 'Beshisahar', 'Damauli', 'Putalikhel', 'Pokhara', 'Chame', 'Mustang',
    'Kusma', 'Baini', 'Baglung', 'Gulmi', 'Tansen', 'Parasi', 'Bhairawa', 'Sandhikarka', 'Taulihawa', 'Pyuthan', 'Libang', 'Musikot', 'Muskikot', 'Salyan',
    'Ghorahi', 'Birendranagar', 'Nepalgunj', 'Jajarkot', 'Dolpa', 'Simikot', 'Manma', 'Gamgadi', 'Jumla', 'Bajura', 'Chainpur', 'Mangalsen', 'Silgadi', 'Dhangadi', 'Kanchanpur', 'Dadeldhura', 'Baitadi', 'Darchula'];

  double? _height;
  double? _width;
  String?  _setDate1,_setDate2;
  String? dateTime;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  TextEditingController _dateController1 = TextEditingController();
  TextEditingController _dateController2 = TextEditingController();

  Future<Null> _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate1,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate1 = picked;
        _dateController1.text = DateFormat.yMd().format(selectedDate1);
      });
  }

  Future<Null> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate2,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate2 = picked;
        _dateController2.text = DateFormat.yMd().format(selectedDate2);
      });
  }

  @override
  void initState() {
    _dateController1.text = DateFormat.yMd().format(DateTime.now());
    _dateController2.text = DateFormat.yMd().format(DateTime.now());
    super.initState();
  }


  @override
    Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
       dateTime = DateFormat.yMd().format(DateTime.now());
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          title:Text("Available Tickets",
                 style: TextStyle(
                   fontSize: 18,
                     fontWeight: FontWeight.w700,
                     color: Color(0xff2699fb),),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: (){
                APIService  apiService = new APIService();
                apiService.profile(widget.token).then((value)async{
                  value.fold(
                        (l) {
                          Navigator.push(context,
                              MaterialPageRoute(builder:
                                  (context) => profile(
                                    fname:l.profiles[0].firstName.toString(),
                                    lname: l.profiles[0].lastName.toString(),
                                    email: l.profiles[0].email.toString(),)
                              )
                          );
                          //send  ${l.profiles[0].firstName.toString()} to  profile page
                        },
                        (r) {
                      final snackBar = SnackBar(
                          backgroundColor: Color(0xff2699fb),
                          content:Text('${r.msg}'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  );
                }
                );

                },
              icon: Icon(Icons.account_circle,color: Color(0xff2699fb),size: 30.0,),
            ),
          )
        ],
      ),

      body: Container(
          height : MediaQuery.of(context).size.height,
          width : MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 50.0),

        child: Column(
          children: <Widget>[
            Center(
              child: Text("Search Flights",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff2699fb),),),
            ),

      Theme(
        data: ThemeData(
            unselectedWidgetColor: Color(0xff2699fb).withOpacity(0.4),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 1,
                    groupValue: val,
                    toggleable: true,
                    activeColor: Color(0xff2699fb),
                    onChanged: (value){
                      setState(() {
                        val = value;
                      });
                    }),
                Text("One Way",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff2699fb),),),

                Radio(
                    value: 2,
                    groupValue: val,
                    toggleable: true,
                    activeColor: Color(0xff2699fb),
                    onChanged: (value){
                      setState(() {
                        val = value;
                      });
                    }),
                Text("Round Trip",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff2699fb),),),

                Radio(
                    value: 3,
                    groupValue: val,
                    toggleable: true,
                    activeColor: Color(0xff2699fb),
                    onChanged: (value){
                      setState(() {
                        val = value;
                      });
                    }),
                Text("Multi - city",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff2699fb),),),

              ],
            ),),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        child:Row(
                          children: [
                            Icon(Icons.location_on,color: Color(0xff2699fb),),
                            SizedBox(width: 10.0,),
                            Text("Leaving From",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2699fb),),),
                          ],
                        )
                    ),
                    SizedBox(height: 17.0,),
                    SizedBox(
                      width: _width! / 2.52,
                      height: _height! / 13,
                      child: DropdownButtonFormField(
                        menuMaxHeight: 250.0,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2699fb).withOpacity(0.3), width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2699fb).withOpacity(0.3), width: 2),
                          ),
                        ),
                        value: dropdownvalue1,
                        icon: const Icon(Icons.keyboard_arrow_down,color:Color(0xff2699fb) ,),
                        items: districts.map((String district) {
                          return DropdownMenuItem(
                            alignment: Alignment.center,
                            value: district,
                            child: Text(district,style: TextStyle(color: Color(0xff2699fb),),),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue1 = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 25.0,),

                    SizedBox(
                        child:Row(
                          children: [
                            Icon(Icons.calendar_month_outlined,color: Color(0xff2699fb),),
                            SizedBox(width: 10.0,),
                            Text("Departure",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2699fb),),),
                          ],
                        )
                    ),
                    SizedBox(height: 17.0,),
                    InkWell(
                      onTap: () {
                        _selectDate1(context);
                      },
                      child: Container(
                        width: _width! / 2.52,
                        height: _height! / 13,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff2699fb).withOpacity(0.5),),),
                        child: TextFormField(
                          style: TextStyle(fontSize: 18,color: Color(0xff2699fb)),
                          textAlign: TextAlign.center,
                          enabled: false,
                          keyboardType: TextInputType.text,
                          controller: _dateController1,
                          onSaved: (String? val) {
                            _setDate1 = val;;
                          },
                          decoration: InputDecoration(
                              disabledBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                              // labelText: 'Time',
                              contentPadding: EdgeInsets.only(top: 0.0)),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0,),

                    SizedBox(
                        child:Row(
                          children: [
                            Icon(Icons.person,color: Color(0xff2699fb),),
                            SizedBox(width: 10.0,),
                            Text("Adults",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2699fb),),),
                          ],
                        )
                    ),
                    SizedBox(height: 17.0,),
                    SizedBox(
                      width: _width! / 2.52,
                      height: _height! / 13,
                      child: DropdownButtonFormField(
                        menuMaxHeight: 250.0,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2699fb).withOpacity(0.3), width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2699fb).withOpacity(0.3), width: 2),
                          ),
                        ),
                        value: dropdownvalue5,
                        icon: const Icon(Icons.keyboard_arrow_down,color:Color(0xff2699fb) ,),
                        items: childrens.map((int children) {
                          return DropdownMenuItem(
                            alignment: Alignment.center,
                            value: children,
                            child: Text('${children}',style: TextStyle(color: Color(0xff2699fb),),),
                          );
                        }).toList(),
                        onChanged: (int? newValue) {
                          setState(() {
                            dropdownvalue5 = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 25.0,),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        child:Row(
                          children: [
                            Icon(Icons.location_on,color: Color(0xff2699fb),),
                            SizedBox(width: 10.0,),
                            Text("Going To",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2699fb),),),
                          ],
                        )
                    ),
                    SizedBox(height: 17.0,),
                    SizedBox(
                      width: _width! / 2.52,
                      height: _height! / 13,
                      child: DropdownButtonFormField(
                        menuMaxHeight: 250.0,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2699fb).withOpacity(0.3), width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2699fb).withOpacity(0.3), width: 2),
                          ),
                        ),
                        value: dropdownvalue2,
                        icon: const Icon(Icons.keyboard_arrow_down,color:Color(0xff2699fb) ,),
                        items: districts.map((String district) {
                          return DropdownMenuItem(
                            alignment: Alignment.center,
                            value: district,
                            child: Text(district,style: TextStyle(color: Color(0xff2699fb),),),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue2 = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 25.0,),

                    SizedBox(
                        child:Row(
                          children: [
                            Icon(Icons.calendar_month_outlined,color: Color(0xff2699fb),),
                            SizedBox(width: 10.0,),
                            Text("Return",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2699fb),),),
                          ],
                        )
                    ),
                    SizedBox(height: 17.0,),
                    InkWell(
                      onTap: () {
                        _selectDate2(context);
                      },
                      child: Container(
                        width: _width! / 2.52,
                        height: _height! / 13,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff2699fb).withOpacity(0.5),),),
                        child: TextFormField(
                          style: TextStyle(fontSize: 18,color: Color(0xff2699fb)),
                          textAlign: TextAlign.center,
                          enabled: false,
                          keyboardType: TextInputType.text,
                          controller: _dateController2,
                          onSaved: (String? val) {
                            _setDate2 = val;
                          },
                          decoration: InputDecoration(
                              disabledBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                              // labelText: 'Time',
                              contentPadding: EdgeInsets.only(top: 0.0)),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0,),

                    SizedBox(
                        child:Row(
                          children: [
                            Icon(Icons.person,color: Color(0xff2699fb),),
                            SizedBox(width: 10.0,),
                            Text("Children",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2699fb),),),
                          ],
                        )
                    ),
                    SizedBox(height: 17.0,),
                    SizedBox(
                      width: _width! / 2.52,
                      height: _height! / 13,
                      child: DropdownButtonFormField(
                        menuMaxHeight: 250.0,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2699fb).withOpacity(0.3), width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff2699fb).withOpacity(0.3), width: 2),
                          ),
                        ),
                        value: dropdownvalue6,
                        icon: const Icon(Icons.keyboard_arrow_down,color:Color(0xff2699fb) ,),
                        items: childrens.map((int children) {
                          return DropdownMenuItem(
                            alignment: Alignment.center,
                            value: children,
                            child: Text('${children}',style: TextStyle(color: Color(0xff2699fb),),),
                          );
                        }).toList(),
                        onChanged: (int? newValue) {
                          setState(() {
                            dropdownvalue6 = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 25.0,),
                  ],
                )
              ],
            ),



                       Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => flightsearch()));
              },
                  style: TextButton.styleFrom(
                    backgroundColor:  Color(0xff2699fb), // Background Color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Search Tickets',style: TextStyle(color: Colors.white),),
                  ),),
            )

          ],
        ),
      ),

    );
  }
}