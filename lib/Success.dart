import 'dart:io';

import 'package:flutter/material.dart';

class SuccessState extends State<SuccessForm> {
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
              //color: const Color.fromRGBO(63, 165, 175, 1)
              color: const Color.fromRGBO(250, 250, 250, 1),
          ),
          width:500,
          height: 540,
          child: Column(
              children: <Widget>[

                Container(
                  margin: const EdgeInsets.only(bottom: 1.0),
                  height:129,
                  width:200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('lib/assets/checks.jpg'),
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                  child: Column(
                    children: [

                      Container(
                        height:50,
                        margin: const EdgeInsets.fromLTRB(0,150,0,0),
                        padding: const EdgeInsets.fromLTRB(0,0,0,0),
                        child: const Text(
                          'Success',
                            style: TextStyle(height: 1, fontSize: 30,color: Colors.blue),

                        ),
                      ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0,bottom: 62.0),
                                child:const Text(
                                  'Password Reset \nSuccessfully',
                                  style: TextStyle(fontSize: 20,color: Colors.blue),
                                ),
                              ),
                            ),



                          ],
                        ),
                      ),

                      const Text(
                        'Continue',
                        style: TextStyle(fontSize: 20,color: Colors.blue),
                        softWrap: true,
                      ),


                    ],

                  ),

                ),




              ])),



    );

  }
}

// Define a custom form widget
class SuccessForm extends StatefulWidget {
  const SuccessForm({super.key});

  @override
  SuccessState createState() => SuccessState();
}

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            Padding(
              padding:  EdgeInsets.only(
                left: 40,
                top: 10,
                right: 40,
                bottom: 20,
              ),

            ),

            SuccessForm(),

          ],
        ),
        ),

      ),
    );

  }
}