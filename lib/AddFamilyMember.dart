import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//email_validator.dart';
//import 'package:worktime_client/src/config/constants.dart';
//import 'package:worktime_client/src/services/http-client.dart';

class AddFamilyMember extends State<AddFamilyMemberForm> {
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
  final contactNumber = FocusNode();
  final birthDate = FocusNode();
  final genderName = FocusNode();
  final familyRelationship = FocusNode();
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];


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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

        Padding(
        padding: const EdgeInsets.fromLTRB(10,20,10,8),
              child: TextFormField(
                focusNode: emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border:  OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    emailFocusNode.requestFocus();
                    return 'Please enter some text';
                  }
                  //return value.isValidEmail() ? null : 'Invalid email';
                },
                style: GoogleFonts.poppins(
                    color: Colors.black, fontWeight:FontWeight.bold
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
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
                  hintText: 'password',
                  border:  OutlineInputBorder(),
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
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight:FontWeight.bold
                  ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: lastName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Last Name',
                  border:  OutlineInputBorder(),
                ),
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight:FontWeight.bold
                  ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: firstName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'First Name',
                  border:  OutlineInputBorder(),
                ),
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight:FontWeight.bold
                  ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: middleName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Middle Name',
                  border:  OutlineInputBorder(),
                ),
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight:FontWeight.bold
                  ),
              ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: contactNumber,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Contact Number',
                  border:  OutlineInputBorder(),
                ),
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight:FontWeight.bold
                  ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: birthDate,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Birth Date',
                  border:  OutlineInputBorder(),
                ),
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight:FontWeight.bold
                  ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: genderName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Gender',
                  border:  OutlineInputBorder(),
                ),
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight:FontWeight.bold
                  ),
              ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: familyRelationship,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Family Relationship',
                  border:  OutlineInputBorder(),
                ),
                  style: GoogleFonts.poppins(
                      color: Colors.black, fontWeight:FontWeight.bold
                  ),
              ),
              ),





              Container(
                width: 430,
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
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
                  child: const Text('Add', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold )),
                ),

              ),
            ]));
  }
}

// Define a custom form widget
class AddFamilyMemberForm extends StatefulWidget {
  const AddFamilyMemberForm({super.key});

  @override
  AddFamilyMember createState() => AddFamilyMember();
}

class AddFamilyMemberScreen extends StatelessWidget {
  const AddFamilyMemberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title:  Text(
          'Add Family Member',
          style: GoogleFonts.poppins(
              color: Colors.black, fontWeight:FontWeight.bold
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('lib/assets/addfamily.png'),fit: BoxFit.fill),
        ),
    child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const AddFamilyMemberForm(),
            ],
          ),
        ),
        ),
      ),
    );

  }
}