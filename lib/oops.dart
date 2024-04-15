import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OopsState extends State<OopsForm> {
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
class OopsForm extends StatefulWidget {
  const OopsForm({super.key});

  @override
  OopsState createState() => OopsState();
}

class OopsScreen extends StatelessWidget {
  const OopsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          actions: <Widget>[

            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('lib/assets/ex.png'),
                  fit: BoxFit.contain,

                ),
              ),
              width: 800,
              height: 100,
            ),

            Container(
              child:  Center(
              child:  Text('Oops!',style:TextStyle(color:Color.fromRGBO(25, 73, 91, 1),fontSize: 35,fontWeight: FontWeight.bold)),
            ),
            ),

            Container(
              child:  Center(
              child:  Text(' Your account was \nunable to be created.\nPlease try again! ',style:TextStyle(color:Color.fromRGBO(25, 73, 91, 1),fontSize: 15,fontWeight: FontWeight.bold)),
            ),
            ),

          Container(
            margin: const EdgeInsets.only(top:50,bottom:10),
         child:  Center(
           child: TextButton(

              onPressed: () => Navigator.pop(context, 'TRY AGAIN'),
              child:  Text('TRY AGAIN',style:TextStyle(color:Color.fromRGBO(201, 66, 69, 1),fontSize: 15,fontWeight: FontWeight.bold)),
            ),
            ),
            ),
          ],
          backgroundColor: Colors.white,
        ),
      ),
      child: const Text('Logout'),
    );

  }
}