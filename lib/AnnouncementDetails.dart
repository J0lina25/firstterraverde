import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//email_validator.dart';
//import 'package:worktime_client/src/config/constants.dart';
//import 'package:worktime_client/src/services/http-client.dart';

class AnnouncementDetailsState extends State<AnnouncementDetailsForm> {
  final _formKey = GlobalKey<FormState>();

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
    return Form(
        key: _formKey,
        child: Container(
            padding:  EdgeInsets.fromLTRB(5,8,5,8),
            margin:  EdgeInsets.fromLTRB(50,8,50,40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromRGBO(63, 165, 175, 1),

            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(50,8,50,60),
                    margin: const EdgeInsets.only(top: 10.0),
                    height: 1000,
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(

                          text:  TextSpan(
                            style: GoogleFonts.poppins(
                                fontSize: 20,color: Colors.white
                            ),
                            children:  <TextSpan>[
                              TextSpan(text: 'General Assembly \n'),
                              TextSpan(text: 'September 27, 2024        10:00 am'),
                              TextSpan(text: 'Clubhouse, Terraverde Residences\n\n'),
                              TextSpan(text: 'This General Assembly is an excellent\n'),
                              TextSpan(text: 'opportunity for you to learn about the\n'),
                              TextSpan(text: 'new information management\n'),
                              TextSpan(text: 'system and understand how it will\n'),
                              TextSpan(text: 'improve information sharing and\n'),
                              TextSpan(text: 'community management. We\n'),
                              TextSpan(text: 'encourage all residents to attend, as \n'),
                              TextSpan(text: 'your participation and feedback are\n'),
                              TextSpan(text: 'crucial to the successful\n'),
                              TextSpan(text: 'implementation of this system\n\n'),
                              TextSpan(text: 'Your active participants will\n'),
                              TextSpan(text: 'contribute to making our community\n'),
                              TextSpan(text: 'even stronger and more connected\n'),
                              TextSpan(text: 'We look forward to seeing you at the \n'),
                              TextSpan(text: 'General Assembly \n'),

                            ],
                          ),
                        ),




                      ],
                    ),
                  ),


                ])));
  }
}

// Define a custom form widget
class AnnouncementDetailsForm extends StatefulWidget {
  const AnnouncementDetailsForm({super.key});

  @override
  AnnouncementDetailsState createState() => AnnouncementDetailsState();
}

class AnnouncementDetailsScreen extends StatelessWidget {
  const AnnouncementDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
          title: const Text('Announcement Details'),

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
            height: 600,
            decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage('lib/assets/images/bg_f.png'),fit: BoxFit.fill),
            ),

    child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                 const AnnouncementDetailsForm(),

              ],
            ),
            ),


          ),
        ));

  }
}