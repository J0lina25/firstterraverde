import 'dart:io';
import 'EditProfile.dart';
import 'dashboard.dart';

import 'package:flutter/material.dart';

class ProfileInformationState extends State<ProfileInformationForm> {
  final _formKey = GlobalKey<FormState>();

  // create email and password controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final isCheckedRememberMe = true;
  final actionRememberMe = true;

  var _isObscured;
  bool ? isChecked = true;

  @override
  void initState() {
    super.initState();
    // emailController.text = testEmail;
    // passwordController.text = testPassword;
    _isObscured = true;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Form(
      key: _formKey,
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10.0),
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromRGBO(63, 165, 175, 1)
          ),
          width:500,
          height: 740,
          child: Column(
              children: <Widget>[

                Container(
                  margin: const EdgeInsets.only(bottom: 1.0),
                  height:150,
                  width:700,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('lib/assets/pic1.jpg'),
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                  child: Column(
                    children: [

                      Container(
                        margin: const EdgeInsets.fromLTRB(0,150,0,0),
                        padding: const EdgeInsets.fromLTRB(0,0,0,8),
                        child: const Text(
                          'Gavino Caro',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0,0,0,8),
                        child: const Text(
                          'Head of the Family',
                        ),
                      ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  'Last name : ',
                                ),
                              ),
                            ),

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child: const Text(
                                  'Caro',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(right: 290.0),
                                child: const Text(
                                  '          ',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  'First name : ',
                                ),
                              ),
                            ),

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child: const Text(
                                  'Gavino',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(right: 290.0),
                                child: const Text(
                                  '          ',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  'Middle name : ',
                                ),
                              ),
                            ),

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child: const Text(
                                  'Pogi',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(right: 290.0),
                                child: const Text(
                                  '          ',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  'Birthday : ',
                                ),
                              ),
                            ),

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child: const Text(
                                  'August 1980',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(right: 290.0),
                                child: const Text(
                                  '          ',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  'Gender : ',
                                ),
                              ),
                            ),

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child: const Text(
                                  'Male',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(right: 290.0),
                                child: const Text(
                                  '          ',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  'Address : ',
                                ),
                              ),
                            ),

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child: const Text(
                                  'Block 42 lot 34',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(right: 290.0),
                                child: const Text(
                                  '          ',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  'Contact# : ',
                                ),
                              ),
                            ),

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child: const Text(
                                  '09246323442',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(right: 290.0),
                                child: const Text(
                                  '          ',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),


                    ],

                  ),

                ),


                 Container(
                   margin: const EdgeInsets.only(top: 390.0),
                  alignment: Alignment.bottomRight,


                   child:  ElevatedButton(
                     child:   Icon(
                       Icons.edit_calendar_rounded,
                       color: Colors.greenAccent,
                       size: 40,
                     ),
                     onPressed: () {
                       Navigator.push(
                           context,
                           MaterialPageRoute(
                               builder: (context) =>
                               const EditProfileScreen()));
                     },
                     style: const ButtonStyle(
                       backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(63, 165, 175, 1)),

                     ),

                   ),

                ),




              ])),



    );

  }
}

// Define a custom form widget
class ProfileInformationForm extends StatefulWidget {
  const ProfileInformationForm({super.key});

  @override
  ProfileInformationState createState() => ProfileInformationState();
}

class ProfileInformationScreen extends StatelessWidget {
  const ProfileInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title: const Text('Profile Information'),
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.white),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,

      ),
      backgroundColor: Colors.teal,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('lib/assets/images/bg_c.png'),fit: BoxFit.fill),
        ),
        height: MediaQuery.of(context).size.height,
        child: const SingleChildScrollView(
        child:  Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [



            ProfileInformationForm(),

          ],
        ),
        ),

      ),
    );

  }
}