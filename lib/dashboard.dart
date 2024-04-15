import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

import 'EditProfile.dart';
import 'AnnouncementList.dart';
import 'Events.dart';
import 'Officials.dart';
import 'ProfileInformation.dart';

import 'package:flutter/material.dart';

class dashboardState extends State<dashboardForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Form(

      key: _formKey,

      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
       Container(
         padding: const EdgeInsets.fromLTRB(50,8,50,8),
         margin: const EdgeInsets.only(top: 10.0),
         child:const Text('Hi Carl Oliva \n Welcome to TRIMS',
                style: TextStyle(
                    fontSize: 20.0,
                )
            ),

      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10,8,50,8),
        margin: const EdgeInsets.only(top: 50.0),
        child: const  CircleAvatar(
          radius: 40, // Image radius
          backgroundImage: NetworkImage('lib/assets/pic1.jpg'),
        ),
      ),



          ],

      )
      ),





    );

  }

}

class dashboardStateList extends State<dashboardList> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    const title = 'Home';

    return Form(
      key: _formKey,

      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 5),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[

                Positioned(

                    left: 30.0,
                    top: 30.0,
                    child:  Container(
                      width:210,
                      height: 190,
                      padding: const EdgeInsets.only(top: 150.0,left:50),
                      margin: const EdgeInsets.only(right:10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromRGBO(63, 165, 175, 1),
                        image: const DecorationImage(
                          image: NetworkImage("lib/assets/speaker.png"),
                          fit: BoxFit.fitHeight,

                        ),
                      ),



                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const AnnouncementListScreen()));
                        },
                        child: Text('Announcement',
                          style: TextStyle(fontSize: 17,color: Colors.white),
                        ),
                      ),

                      //const Text('Announcements'),


                    ),

                ),


              ],
            ),
            Column(
              children: <Widget>[

                Positioned(

                  left: 30.0,
                  top: 30.0,
                  child:  Container(
                    width:210,
                    height: 190,
                    padding: const EdgeInsets.only(top: 150.0,left:50),
                    margin: const EdgeInsets.only(right:10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromRGBO(63, 165, 175, 1),
                      image: const DecorationImage(
                        image: NetworkImage("lib/assets/event.png"),
                        fit: BoxFit.fitHeight,

                      ),
                    ),

                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const EventsScreen()));
                        },
                        child: Text('       Events',
                          style: TextStyle(fontSize: 17,color: Colors.white),
                        ),
                      )


                  ),

                ),


              ],
            ),

          ],
        ),

      ),


    );
  }
}

class dashboardStateList2 extends State<dashboardList2> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    const title = 'Home';

    return Form(
      key: _formKey,

      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 5),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[

                Positioned(

                  left: 30.0,
                  top: 30.0,
                  child:  Container(
                    width:210,
                    height: 190,
                    padding: const EdgeInsets.only(top: 150.0,left:50),
                    margin: const EdgeInsets.only(right:10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromRGBO(63, 165, 175, 1),
                      image: const DecorationImage(
                        image: NetworkImage("lib/assets/officials.png"),
                        fit: BoxFit.fitHeight,

                      ),
                    ),

                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const OfficialsScreen()));
                        },
                        child: Text('     Officials',
                          style: TextStyle(fontSize: 17,color: Colors.white),
                        ),
                      )


                  ),

                ),


              ],
            ),
            Column(
              children: <Widget>[

                Positioned(

                  left: 30.0,
                  top: 30.0,
                  child:  Container(
                    width:210,
                    height: 190,
                    padding: const EdgeInsets.only(top: 150.0,left:50),
                    margin: const EdgeInsets.only(right:10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromRGBO(63, 165, 175, 1),
                      image: const DecorationImage(
                        image: NetworkImage("lib/assets/profile.png"),
                        fit: BoxFit.fitHeight,

                      ),
                    ),

                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const ProfileInformationScreen()));
                        },
                        child: Text('      Profile',
                          style: TextStyle(fontSize: 17,color: Colors.white),
                        ),
                      )


                  ),

                ),


              ],
            ),

          ],
        ),

      ),


    );
  }
}

class EditButtonStateList extends State<EditButtonList> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    const title = 'Home';

    return Form(
      key: _formKey,

      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 5),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[

                Positioned(

                  left: 60.0,
                  top: 50.0,
                  child:  Container(
                    width:210,
                    height: 190,
                    padding: const EdgeInsets.only(top: 80.0,left:50),
                    margin: const EdgeInsets.only(left:230),
                     child: IconButton(
                       icon: const Icon(Icons.edit_calendar_rounded, size: 72),
                        iconSize: 50,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const EditProfileScreen()));

                        },
                      )

                  ),

                ),


              ],
            ),


          ],
        ),

      ),


    );
  }
}


// Define a custom form widget

class dashboardForm extends StatefulWidget {
  const dashboardForm({super.key});

  @override
  dashboardState createState() => dashboardState();
}




class dashboardList extends StatefulWidget {
  const dashboardList({super.key});

  @override
  dashboardStateList createState() => dashboardStateList();
}

class EditButtonList extends StatefulWidget {
  const EditButtonList({super.key});

  @override
  EditButtonStateList createState() => EditButtonStateList();
}



class dashboardList2 extends StatefulWidget {
  const dashboardList2({super.key});

  @override
  dashboardStateList2 createState() => dashboardStateList2();
}

class dashboardScreen extends StatelessWidget {
  const dashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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



            dashboardForm(),
            Text(
              'Home',
                style: TextStyle(
                  fontSize: 20.0,
                )
            ),
            dashboardList(),
            dashboardList2(),
            EditButtonList(),
            //MyAppList(),


          ],
        ),
        ),

      ),
    );

  }
}