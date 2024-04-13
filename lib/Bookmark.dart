import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookmarkState extends State<BookmarkForm> {
  final _formKey = GlobalKey<FormState>();

  // create email and password controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final isCheckedRememberMe = true;
  final actionRememberMe = true;
  bool outline = false;

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
          height: 230,
          child: Column(
              children: <Widget>[

                Container(
                  margin: const EdgeInsets.only(bottom: 1.0),
                  height:150,
                  width:700,

                  child: Column(
                    children: [

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                child:const Text(
                                  'July 27, 2024',
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                child:const Text(
                                  '                  ',
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 10.0),
                                child: const Text(
                                  '3:00PM',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                              child: IconButton(icon: Icon(outline ? Icons.bookmark_outline : Icons.bookmark),
                                  onPressed:(){
                                    setState((){
                                      outline = !outline;
                                    });
                                  }
                              ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      const Text(
                        '\nGeneral Assembly - HOA and Residence',
                        softWrap: true,
                      ),
                      const Text(
                        'ClubHouse Terraverde Residence',
                        softWrap: true,
                      ),

                    ],

                  ),

                ),
                Container(
                  width: 700,
                  padding: const EdgeInsets.fromLTRB(0,1,0,1),
                  margin: const EdgeInsets.only(top: 0.0),

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF194A59),
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
                    child: const Text('View', style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold )),
                  ),

                ),



              ])),



    );

  }
}

// Define a custom form widget
class BookmarkForm extends StatefulWidget {
  const BookmarkForm({super.key});

  @override
  BookmarkState createState() => BookmarkState();
}

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title: const Text('Bookmark'),

        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.white),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),
      backgroundColor: Colors.teal,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('lib/assets/images/bg_c.png'),fit: BoxFit.fill),
        ),
        height: MediaQuery.of(context).size.height,
    child: SingleChildScrollView(
        child: const Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [



            BookmarkForm(),
            BookmarkForm(),

          ],
        ),
        ),

      ),
    );

  }
}