import 'dart:io';
import 'EventDetails.dart';

import 'package:flutter/material.dart';

class EventsState extends State<EventsForm> {
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
    final  dates = widget.dates;
    final  times = widget.times;
    final  description = widget.description;
    final  picture = widget.picture;
    final  links = widget.links;

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
          height: 330,
          child: Column(
              children: <Widget>[

                Container(
                  margin: const EdgeInsets.only(bottom: 1.0),
                  height:150,
                  width:700,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(picture),
                        fit: BoxFit.fitWidth,

                    ),
                  ),
                  child: Column(
                    children: [

                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(
                              child: Container(
                                margin: const EdgeInsets.only(top: 160.0),
                              child: Text(
                                dates,
                              ),
                            ),
                            ),
                             WidgetSpan(
                            child: Container(
                              margin: const EdgeInsets.only(top: 160.0),
                              child:const Text(
                                '                                ',
                              ),
                            ),
                            ),
                             WidgetSpan(
                            child: Container(
                              margin: const EdgeInsets.only(top: 160.0),
                              child:  Text(
                                times,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                            ),

                          ],
                        ),
                      ),

                       Text(
                        description,
                        softWrap: true,
                      ),

                    ],

                  ),

                ),
                Container(
                  width: 700,
                  padding: const EdgeInsets.fromLTRB(0,8,0,8),
                  margin: const EdgeInsets.only(top: 100.0),

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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const EventsDetailsScreen()));

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
class EventsForm extends StatefulWidget {
  //const EventsForm({super.key});
  final String dates;
  final String times;
  final String description;
  final String picture;
  final String links;
  const EventsForm(this.dates,this.times,this.description,this.picture,this.links);
  @override
  EventsState createState() => EventsState();
}

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(25, 74, 89, 1),
        title: const Text('Events'),

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


            EventsForm('July 27,2024','3:00PM','General Assembly - HOA and Residence Clubhouse Terraverde Residence','lib/assets/pic1.jpg','link'),
            EventsForm('July 28,2024','4:00PM','General Assembly - HOA and Residence Clubhouse Terraverde Residence','lib/assets/pic1.jpg','link'),


          ],
        ),
        ),

      ),
    );

  }
}