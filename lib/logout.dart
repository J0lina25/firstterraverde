import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoutState extends State<LogoutForm> {
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
          height: 740,
          child: Container( ),







              ),



    );

  }


}

// Define a custom form widget
class LogoutForm extends StatefulWidget {
  const LogoutForm({super.key});

  @override
  LogoutState createState() => LogoutState();
}

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Are you sure you \n want to logout?',style:TextStyle(color:Color.fromRGBO(25, 73, 91, 1),fontSize: 25,fontWeight: FontWeight.bold)),
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
              child: const Text('CANCEL',
                  style:TextStyle(color:Color.fromRGBO(25, 73, 91, 1),fontSize: 10,fontWeight: FontWeight.bold)
                  
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Color.fromRGBO(25, 73, 91, 1)),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  side: BorderSide(
                    color:Color.fromRGBO(25, 73, 91, 1), // your color here
                    width: 1,

                  ),
                )
                ),
              ),
              onPressed: () => Navigator.pop(context, 'LOGOUT'),
              child: const Text('LOGOUT',style:TextStyle(color:Colors.white,fontSize: 10,fontWeight: FontWeight.bold)),
            ),
          ],
          backgroundColor: Colors.white,
        ),
      ),
      child: const Text('Logout'),
    );

  }
}