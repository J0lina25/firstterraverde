import 'dart:io';

import 'package:flutter/material.dart';
//email_validator.dart';
//import 'package:worktime_client/src/config/constants.dart';
//import 'package:worktime_client/src/services/http-client.dart';

class CreateAccount extends State<CreateAccountForm> {
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: const OutlineInputBorder(),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: lastName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Last Name',
                  border: const OutlineInputBorder(),
                ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      lastName.requestFocus();
                      return 'Please enter some text';
                    }
                    //return value.isValidEmail() ? null : 'Invalid email';
                  },
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: firstName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'First Name',
                  border: const OutlineInputBorder(),
                ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      firstName.requestFocus();
                      return 'Please enter some text';
                    }
                    //return value.isValidEmail() ? null : 'Invalid email';
                  },
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: middleName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Middle Name',
                  border: const OutlineInputBorder(),
                ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      middleName.requestFocus();
                      return 'Please enter some text';
                    }
                    //return value.isValidEmail() ? null : 'Invalid email';
                  },
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: addressName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Address',
                  border: const OutlineInputBorder(),
                ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      addressName.requestFocus();
                      return 'Please enter some text';
                    }
                    //return value.isValidEmail() ? null : 'Invalid email';
                  },
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: contactNumber,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Contact Number',
                  border: const OutlineInputBorder(),
                ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      contactNumber.requestFocus();
                      return 'Please enter some text';
                    }
                    //return value.isValidEmail() ? null : 'Invalid email';
                  },
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: birthDate,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Birth Date',
                  border: const OutlineInputBorder(),
                ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      birthDate.requestFocus();
                      return 'Please enter some text';
                    }
                    //return value.isValidEmail() ? null : 'Invalid email';
                  },
              ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: genderName,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Gender',
                  border: const OutlineInputBorder(),
                ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      genderName.requestFocus();
                      return 'Please enter some text';
                    }
                    //return value.isValidEmail() ? null : 'Invalid email';
                  },
              ),
              ),


              Container(
                width: 670,
                padding: const EdgeInsets.fromLTRB(10,8,10,8),
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
                  child: const Text('Sign up', style: TextStyle(color: Color.fromRGBO(25, 73, 91, 1), fontWeight:FontWeight.bold )),
                ),
              ),
            ]));
  }
}

// Define a custom form widget
class CreateAccountForm extends StatefulWidget {
  const CreateAccountForm({super.key});

  @override
  CreateAccount createState() => CreateAccount();
}

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage('lib/assets/images/bg_b.png'),fit: BoxFit.fill),
          ),
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(30.0),
    child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create Account',
                style: Theme.of(context).textTheme.headline3,
              ),

              const CreateAccountForm(),
            ],
          ),
          ),
        ),
      ),
    );

  }
}