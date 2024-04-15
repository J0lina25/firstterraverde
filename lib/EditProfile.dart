import 'dart:io';

import 'package:flutter/material.dart';
//email_validator.dart';
//import 'package:worktime_client/src/config/constants.dart';
//import 'package:worktime_client/src/services/http-client.dart';

class EditProfile extends State<EditProfileForm> {
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
  final contactNumbers = FocusNode();
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
    final email = widget.email;
    final lastname = widget.lastname;
    final firstname = widget.firstname;
    final middle = widget.middle;
    final contactNumber = widget.contactNumber;
    final pictures = widget.pictures;
    return Form(
        key: _formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(10,20,0,0),
                height:80,
                width:80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    image: DecorationImage(
                    image: NetworkImage('lib/assets/pic1.jpg'),
                    fit: BoxFit.fitWidth,


                  ),
                ),
              ),
            Padding(
            padding: const EdgeInsets.fromLTRB(10,50,10,8),
              child: TextFormField(
                focusNode: emailFocusNode,
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Emails',
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

              ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,8),
                child: TextFormField(
                focusNode: contactNumbers,
                controller: lastNameController,
                decoration: const InputDecoration(
                  hintText: 'Contact Number',
                  border: const OutlineInputBorder(),
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
                  child: const Text('Update', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold )),
                ),

              ),
            ]));
  }
}

// Define a custom form widget
class EditProfileForm extends StatefulWidget {
  final String email;
  final String lastname;
  final String firstname;
  final String middle;
  final String contactNumber;
  final String pictures;
  const EditProfileForm(this.pictures,this.email,this.lastname,this.firstname,this.middle,this.contactNumber);
  //const String EditProfileForm({super.key});

  @override
  EditProfile createState() => EditProfile();
}

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title: const Text('Edit Profile'),

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
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage('lib/assets/images/bg_c.png'),fit: BoxFit.fill),
          ),
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const EditProfileForm('pictures','email','lastname','firstname','middle','contactNumber'),
            ],
          ),
          ),
        ),
      ),
    );

  }
}