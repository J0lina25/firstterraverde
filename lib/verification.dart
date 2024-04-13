import 'dart:io';

import 'package:flutter/material.dart';

class VerificationState extends State<VerificationForm> {
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

            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(50,8,50,8),
                    margin: const EdgeInsets.only(top: 110.0),
                    child:
                    TextFormField(
                      focusNode: emailFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          emailFocusNode.requestFocus();
                          return 'Please enter some text';
                        }
                        //return value.isValidEmail() ? null : 'Invalid email';
                      },
                    ),
                  ),


                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: const Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          WidgetSpan(
                            child: Text(
                              'Didnt Receive the code?  ',
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: const Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          WidgetSpan(
                            child: Text(
                              'Send Another Code ',
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: 500,
                    padding: const EdgeInsets.fromLTRB(50,8,50,8),
                    margin: const EdgeInsets.only(top: 50.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.green,
                      ).merge(ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            // Change your radius here
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),),

                      onPressed: () {

                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Trying to Login')),
                          );
                        }
                      },
                      //child: const Text('Log in'),
                      child: const Text('Log in', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold )),
                    ),

                  ),

                ])));
  }
}

// Define a custom form widget
class VerificationForm extends StatefulWidget {
  const VerificationForm({super.key});

  @override
  VerificationState createState() => VerificationState();
}

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 50.0),
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('lib/assets/images/bg_e.png'),fit: BoxFit.fill),
        ),
    child: SingleChildScrollView(
        child: const Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [


             Text(
              'Verification',
              style: TextStyle(fontSize: 25,color: Colors.white),


            ),

             Text(
              'A 6 - Digit code sent to you email or phone \n Enter the code to Continue',
              style: TextStyle(fontSize: 15,color: Colors.white),


            ),

             VerificationForm(),

          ],
        ),
        ),

      ),
    );

  }
}