import 'dart:io';
import 'CreateAccount.dart';
import 'CreatePassword.dart';
//import 'package:flutter_rest_api/screen/home.dart';
import 'screen/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class LoginFormState extends State<LoginForm> {
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

  _launchURL() async {
    Uri _url = Uri.parse('https://www.educative.io');
    if (await launchUrl(_url)) {
      await launchUrl(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

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
        height: 200,
    );


    return Form(
        key: _formKey,
        child: Container(

            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
            Container(
            padding: const EdgeInsets.fromLTRB(50,8,50,8),
            margin: const EdgeInsets.only(top: 50.0),
            child: TextFormField(
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
                      hintText: 'Password',
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
                  ),
                  ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.values[0],
                  children: [
                    Positioned(
                      top: 50,
                      child: Container(
                        width: 50,
                        height: 50,
                      ),
                    ),
                    SizedBox(
                      height:24.0,
                      width: 20.0,
                      child: Theme(
                        data: ThemeData(
                        ),

                        child: Checkbox(
                          tristate: false,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value;
                            });
                          },
                        ),
                        ),

                    ),
                    const SizedBox(width: 10.0),
                     Text('Remember Me',
                    style: GoogleFonts.poppins(),
                    ),
                  ],
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
                         //insertrecord();
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
                  Center(

                  child: Row(

                    children : <Widget>[
                      SizedBox(width: 150.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Dont Have an Account? ',
                            style: GoogleFonts.poppins(),
                          ),
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
                                    const CreateAccountScreen()));
                          },
                          child: Text('Sign up',
                            style: GoogleFonts.poppins(),
                          ),
                          ),
                        ],
                      ),


                    ],

                  ),

                  ),

                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const CreatePasswordScreen()));
                    },
                    child:  Text(
                      'Forgot Password',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                ])));
  }
}

// Define a custom form widget
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.teal,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage('lib/assets/loginbg.png'),fit: BoxFit.fill),
        ),
    child: SingleChildScrollView(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [

        Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('lib/assets/logo.png'),
            fit: BoxFit.cover,

          ),
            ),
            width: 200,
            height: 200,
          ),


             Text(
              'Welcome \n Neighbor',
               style: GoogleFonts.poppins(
                  fontSize: 30,
              ),


            ),

            const LoginForm(),

          ],
        ),
        ),

      ),
    );

  }
}