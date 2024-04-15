import 'dart:io';

import 'package:flutter/material.dart';

class EventsDetailsState extends State<EventsDetailsForm> {
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
              color: const Color.fromRGBO(63, 165, 175, 1)
          ),
          width:500,
          height: 740,
          child: Column(
              children: <Widget>[

                Container(
                  margin: const EdgeInsets.only(bottom: 1.0),
                  height:150,
                  width:700,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('lib/assets/pic1.jpg'),
                      fit: BoxFit.fitWidth,

                    ),
                  ),
                  child: Column(
                    children: [

                    Container(
                      margin: const EdgeInsets.fromLTRB(0,150,0,0),
                      padding: const EdgeInsets.fromLTRB(0,0,0,8),
                      child: const Text(
                        'Graduation of BSIT 4',
                      ),
                    ),

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[

                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  'July 27, 2024',
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child:const Text(
                                  '                                                  ',
                                ),
                              ),
                            ),
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 2.0),
                                child: const Text(
                                  '3:00PM',
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      const Text(
                        'It is with the immense joy and pride that we extend our warmest invitation to the upcoming graduation ceremony of the Bachelor of Science in Information Technology'
                         '(BSIT) Class of [Year] at the prestigious Philippines International Convention Center (PICC) in Pasay September 11, 2024 '
                            ' The Journey through the world of Information Technology has been one of dedication, perseverance  '
                            ' ',
                        softWrap: true,
                      ),
                      const Text(
                        'ClubHouse Terraverde Residence',
                        softWrap: true,
                      ),

                    ],

                  ),

                ),




              ])),



    );

  }
}

// Define a custom form widget
class EventsDetailsForm extends StatefulWidget {
  const EventsDetailsForm({super.key});

  @override
  EventsDetailsState createState() => EventsDetailsState();
}

class EventsDetailsScreen extends StatelessWidget {
  const EventsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title: const Text('Events Details'),

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


            EventsDetailsForm(),

          ],
        ),
        ),

      ),
    );

  }
}