import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ProfileInformation.dart';

class OfficialsState extends State<OfficialsForm> {

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
    final names = widget.names;
    final position = widget.position;
    final picture = widget.picture;

       return Container(

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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(picture),
                      fit: BoxFit.contain,

                    ),
                  ),
                  width:100,
                  height:50,


                ),

                Container(

                  margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 50.0),
                  child:  Column(

                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ProfileInformationScreen()));
                        },
                        child: Text(names,
                          style: GoogleFonts.poppins(
                              color: Colors.black, fontWeight:FontWeight.bold
                          ),
                        ),
                      ),

                      Text(
                        position,
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight:FontWeight.bold
                        ),
                      ),


                    ],

                  ),
                ),



              ]));





  }
}

// Define a custom form widget
class OfficialsForm extends StatefulWidget {
  final String names;
  final String position;
  final String picture;
  //const OfficialsForm({super.key});
  const OfficialsForm(this.names,this.position,this.picture);

  @override
  OfficialsState createState() => OfficialsState();
}

class OfficialsScreen extends StatelessWidget {
  const OfficialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title: const Text('OFFICIALS'),

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
          image: DecorationImage(image: NetworkImage('lib/assets/images/bg_c.png'),fit: BoxFit.fill),
        ),
    child: SingleChildScrollView(

        child: const Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            OfficialsForm('Carl Oliva','WEB DEVELOPER','lib/assets/officials/carl.jpg	'),
            OfficialsForm('Renalie Garrate','WEB DEVELOPER','lib/assets/officials/renalie.jpg	'),
            OfficialsForm('Joey Barbacena','MOBILE DEVELOPER','lib/assets/officials/joey.jpg	'),
            OfficialsForm('Jolina Peralta','MOBILE DEVELOPER','lib/assets/officials/jolina.jpg	'),

          ],
        ),


        ),

      ),
    );

  }
}