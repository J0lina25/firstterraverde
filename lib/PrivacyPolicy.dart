import 'dart:io';

import 'package:flutter/material.dart';

class PrivacyPolicyState extends State<PrivacyPolicy> {
  final _formKey = GlobalKey<FormState>();

  // create email and password controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

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
    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('lib/assets/logo.png'),
          fit: BoxFit.cover,

        ),
      ),
      width: 200,
      height: 1300,
    );


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
                    padding: const EdgeInsets.fromLTRB(50,8,50,0),
                    margin: const EdgeInsets.only(top: 10.0),
                    height: MediaQuery.of(context).size.height,
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(

                          text:  TextSpan(
                            style: TextStyle(fontSize: 20,color: Colors.white),

                            children:  <TextSpan>[
                              TextSpan(text: 'Last Updated: May 11, 2024 '),
                              TextSpan(text: '\n\n\n',style: TextStyle(backgroundColor: Colors.white)),
                              TextSpan(text: 'Welcome to TRIMS (Terraverde Residences Information Management System)\n\n'),
                              TextSpan(text: 'This Privacy Policy outlines how we collect, use, disclose, and safeguard your personal information'),
                              TextSpan(text: 'when you see our system'),
                              TextSpan(text: 'By using TRIMS, consent to the practices described in this Privacy Policy. If you do not agree with the terms of this Privacy Policy'),
                              TextSpan(text: 'please do not use TRIMS\n\n'),
                              TextSpan(text: 'Contact Us:\n'),
                              TextSpan(text: 'if you have any questions or concerns'),
                              TextSpan(text: 'about this Privacy Policy, Please contact us at'),

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
class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  PrivacyPolicyState createState() => PrivacyPolicyState();
}

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        //height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 10.0,bottom:20),
        height: 600,
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('lib/assets/images/bg_f.png'),fit: BoxFit.fill),
        ),
    child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [


            const Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 30,color: Colors.white),


            ),

            const PrivacyPolicy()

          ],
        ),
        ),

      ),
    );

  }
}