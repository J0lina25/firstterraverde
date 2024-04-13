import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class CreatePasswordState extends State<CreatePasswordForm> {
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
                    margin: const EdgeInsets.only(top:100),
                    padding: const EdgeInsets.fromLTRB(50,8,50,8),
                    child:TextFormField(
                      obscureText: _isObscured,
                      focusNode: passwordFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      controller: passwordController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            padding: const EdgeInsetsDirectional.only(end: 12.0),
                            icon: _isObscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscured =!_isObscured;
                              });
                            }
                        ),
                        hintText: 'New Password',
                        border: const OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          passwordFocusNode.requestFocus();
                          return 'Please enter some text';
                        }
                        if(value.length < 6) {
                          passwordFocusNode.requestFocus();
                          return 'Password must be at least 6 characters';
                        }
                      },
                      style: GoogleFonts.poppins(),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(50,8,50,8),
                    child:TextFormField(
                      obscureText: _isObscured,
                      focusNode: passwordFocusNode,
                      keyboardType: TextInputType.emailAddress,
                      controller: passwordController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            padding: const EdgeInsetsDirectional.only(end: 12.0),
                            icon: _isObscured ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _isObscured =!_isObscured;
                              });
                            }
                        ),
                        hintText: 'Confirm Password',
                        border: const OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          passwordFocusNode.requestFocus();
                          return 'Please enter some text';
                        }
                        if(value.length < 6) {
                          passwordFocusNode.requestFocus();
                          return 'Password must be at least 6 characters';
                        }
                      },
                      style: GoogleFonts.poppins(),
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
                      child:  Text('Confirm',
                          style: GoogleFonts.poppins(color: Colors.black, fontWeight:FontWeight.bold ),

                      ),
                    ),

                  ),


                ])));
  }
}

// Define a custom form widget
class CreatePasswordForm extends StatefulWidget {
  const CreatePasswordForm({super.key});

  @override
  CreatePasswordState createState() => CreatePasswordState();
}

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        padding: const EdgeInsets.fromLTRB(50,50,50,8),
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('lib/assets/images/bg_d.png'),fit: BoxFit.fill),
        ),
        child: const Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [

             Text(
              'Create your new password',
              style: TextStyle(fontSize: 15,color: Colors.white),


            ),

             CreatePasswordForm(),

          ],
        ),

      ),
    );

  }
}