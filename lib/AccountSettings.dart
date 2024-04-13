import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ProfileInformation.dart';
import 'Bookmark.dart';
import 'LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';
//email_validator.dart';
//import 'package:worktime_client/src/config/constants.dart';
//import 'package:worktime_client/src/services/http-client.dart';

class CreateAccount extends State<AccountSettingForm> {
  final _formKey = GlobalKey<FormState>();
  signOut() async {
    //await auth.signOut();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
  // create email and password controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final lastNameController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final lastName = FocusNode();
  final firstName = FocusNode();
  final middleName = FocusNode();
  final addressName = FocusNode();
  final contactNumber = FocusNode();
  final birthDate = FocusNode();
  final genderName = FocusNode();

  var _isObscured;


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



    return Column(

      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children : <Widget>[
            SizedBox(width: 0.0,height:100),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.person),
              ],
            ),
            Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const ProfileInformationScreen()));
                  },
                  child: Text(' Profile Setting',
                    style: GoogleFonts.poppins(
                        fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),


          ],

        ),

      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children : <Widget>[
          SizedBox(width: 0.0,height:100),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Icon(Icons.bookmark),
            ],
          ),
          Column(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const BookmarkScreen()));
                },
                child: Text(' Bookmarks',
                  style: GoogleFonts.poppins(
                      fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),


        ],

      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children : <Widget>[
            SizedBox(width: 0.0,height:100),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.lock),
              ],
            ),
            Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const ProfileInformationScreen()));
                  },
                  child: Text('Privacy Policy',
                    style: GoogleFonts.poppins(
                        fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
                    ),
                    ),
                ),
              ],
            ),


          ],

        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children : <Widget>[
            SizedBox(width: 0.0,height:100),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.logout_rounded,
                  color: Color.fromRGBO(190, 89, 110, 1),
                ),
              ],
            ),
            Column(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title:  Text('Are you sure you \n want to logout?',

    style: GoogleFonts.poppins(
        color:const Color.fromRGBO(25, 73, 91, 1),fontSize: 25,fontWeight: FontWeight.bold
    ),
                          ),
                      actions: <Widget>[

                        TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                              side: BorderSide(
                                color:Color.fromRGBO(25, 73, 91, 1), // your color here
                                width: 1,
                              ),
                            )
                            ),
                          ),
                          onPressed: () => Navigator.pop(context, 'CANCEL'),
                          child:  Text('CANCEL',
                               style: GoogleFonts.poppins(
                                color:const Color.fromRGBO(25, 73, 91, 1),fontSize: 10,fontWeight: FontWeight.bold
                            ),

                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(Color.fromRGBO(25, 73, 91, 1)),
                            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                              side: BorderSide(
                                color:Color.fromRGBO(25, 73, 91, 1), // your color here
                                width: 600,

                              ),
                            )
                            ),
                          ),
                          onPressed: () => signOut(),
                          child: Text('LOGOUT',
    style: GoogleFonts.poppins(
    color:Colors.white,fontSize: 10,fontWeight: FontWeight.bold
    ),
                          ),
                        ),
                      ],
                      backgroundColor: Colors.white,
                    ),
                  ),
                  child: Text('Logout',
    style: GoogleFonts.poppins(
    color: Color.fromRGBO(190, 89, 110, 1),fontSize: 20,fontWeight: FontWeight.bold
    ),
                  ),
                ),
              ]
            ),


          ],

        ),
      ]);


  }
}

// Define a custom form widget
class AccountSettingForm extends StatefulWidget {
  const AccountSettingForm({super.key});

  @override
  CreateAccount createState() => CreateAccount();
}

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title:  Text('Account Settings',
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight:FontWeight.bold
          ),
        ),

        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.white),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage('lib/assets/images/bg_c.png'),fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: [

              const AccountSettingForm(),
            ],
          ),
        ),
      ),
    );

  }
}