import 'dart:io';
import 'CreateAccount.dart';
import 'ProfileInformation.dart';
import 'dashboard.dart';

import 'package:flutter/material.dart';

class ProfileListHeadState extends State<ProfileListHeadForm> {
  final _formKey = GlobalKey<FormState>();

  // create email and password controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final isCheckedRememberMe = true;
  final actionRememberMe = true;

  final leftSection =  Container();
  final middleSection =  Container();
  final rightSection =  Container();

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
              color: const Color.fromRGBO(63, 165, 175, 1)
          ),
          width:500,
          height: 170,
          child: Row(
              children: <Widget>[

                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    image: DecorationImage(
                      image: NetworkImage('lib/assets/pic1.jpg'),
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                  width:100,
                  height:100,


                ),

                Container(
                  margin:  EdgeInsets.symmetric(horizontal: 10.0,vertical: 30.0),
                  child:  Column(
                    children: [

                      const Text(
                        'Gavino Caro \nHead of the Family',
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ProfileInformationScreen()));
                        },
                        child: Text('View More',
                          style: TextStyle(fontSize: 15,color: Colors.white),
                        ),
                      ),

                    ],

                  ),
                ),


              ])),



    );

  }
}

class ProfileListState extends State<ProfileListForm> {
  final _formKey = GlobalKey<FormState>();

  // create email and password controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final isCheckedRememberMe = true;
  final actionRememberMe = true;

  final leftSection =  Container();
  final middleSection =  Container();
  final rightSection =  Container();

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
              color: const Color.fromRGBO(63, 165, 175, 1)
          ),
          width:500,
          height: 170,
          child: Row(
              children: <Widget>[

                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    image: DecorationImage(
                      image: NetworkImage('lib/assets/pic1.jpg'),
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                  width:100,
                  height:100,


                ),

                Container(
                  margin:  EdgeInsets.symmetric(horizontal: 10.0,vertical: 30.0),
                  child:  Column(
                    children: [

                      const Text(
                        'Gavino Caro \nHead of the Family',
                      ),



                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ProfileInformationScreen()));
                        },
                        child: Text('View More',
                          style: TextStyle(fontSize: 15,color: Colors.white),
                        ),
                      ),

                    ],

                  ),
                ),


              ])),



    );

  }
}


class ProfileAddButtonState extends State<ProfileAddButtonForm> {
  final _formKey = GlobalKey<FormState>();

  // create email and password controller



  @override
  Widget build(BuildContext context) {


    return Form(
      key: _formKey,
      child: Container(

          width:600,
          height: 170,
          child: Row(
              children: <Widget>[

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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const CreateAccountScreen()));


                    },
                    //child: const Text('Log in'),
                    child: const Text('Add Family Member', style: TextStyle(color: Colors.black, fontWeight:FontWeight.bold )),
                  ),

                ),




              ])),



    );

  }
}

// Define a custom form widget
class ProfileAddButtonForm extends StatefulWidget {
  const ProfileAddButtonForm({super.key});

  @override
  ProfileAddButtonState createState() => ProfileAddButtonState();
}

class ProfileListHeadForm extends StatefulWidget {
  const ProfileListHeadForm({super.key});

  @override
  ProfileListHeadState createState() => ProfileListHeadState();
}



class ProfileListForm extends StatefulWidget {
  const ProfileListForm({super.key});

  @override
  ProfileListState createState() => ProfileListState();
}



class ProfileListScreen extends StatelessWidget {
  const ProfileListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title: const Text('Profile'),

        leading: BackButton(
          onPressed: ()=> const dashboardScreen(),

        ),
      ),
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


      Positioned(

          left: 0,
          top: 20,
          right: 0,
          bottom: 0,

        child:  Text(
          'Head of the Family',
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 14,color: Colors.white),

        ),
      ),
            ProfileListHeadForm(),

            Padding(
              padding:  EdgeInsets.only(
                left: 0,
                top: 20,
                right: 0,
                bottom: 0,
              ),
              child:  Text(
                'Family Members',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14,color: Colors.white),

              ),
            ),
            ProfileListForm(),
            ProfileListForm(),
            ProfileAddButtonForm(),




          ],
        ),
    ),
      ),
    );

  }
}