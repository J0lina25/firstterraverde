import 'dart:io';
import 'CreateAccount.dart';
import 'CreatePassword.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ResetState extends State<ResetForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Form(

      key: _formKey,

      child: Container(


          margin: const EdgeInsets.only(top: 30.0),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding:  EdgeInsets.fromLTRB(0,0,0,8),
                margin:  EdgeInsets.only(top: 50.0),
                child: Text('Reset Password \n',
                     style: GoogleFonts.poppins(fontSize: 20.0),
                ),


              ),


            ],

          )
      ),





    );

  }

}


class NextPage extends StatelessWidget {

  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Next Page',
        style: GoogleFonts.poppins(),
      ),

      ),
      body: const Center(
        child: Text('GeeksForGeeks'),
      ),
    );
  }
}

class ResetStateList extends State<ResetList> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    const title = 'Home';

    return Form(
      key: _formKey,

        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            decoration: const BoxDecoration(
                color:  Color.fromRGBO(250, 250, 250, 1)
            ),
            width:500,
            height: 170,
          child: ElevatedButton(
    style: ElevatedButton.styleFrom(
        elevation: 0.0,
      primary: Colors.white.withOpacity(1),

    ),
            onPressed: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                         const CreatePasswordScreen()));
            },  // Handle your onTap here.

            child: Row(

                children: <Widget>[


                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('lib/assets/email.png'),
                        fit: BoxFit.contain,

                      ),
                    ),
                    width:80,
                    height:50,


                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 50.0),
                    child:  Column(
                      children: [

                        Text(
                          'via email:',
                          style: GoogleFonts.poppins(color: Color.fromRGBO(25, 74, 89, 1),fontSize: 17,fontWeight:FontWeight.bold),
                        ),
                        Text(
                          'sample@gmail.com',
                          style: GoogleFonts.poppins(color: Color.fromRGBO(25, 74, 89, 1),fontSize: 17,fontWeight:FontWeight.bold),
                        ),

                      ],

                    ),
                  ),


                ]),
        ),
        ),

    );
  }
}

// Define a custom form widget

class ResetForm extends StatefulWidget {
  const ResetForm({super.key});

  @override
  ResetState createState() => ResetState();
}




class ResetList extends StatefulWidget {
  const ResetList({super.key});

  @override
  ResetStateList createState() => ResetStateList();
}


class ResetScreen extends StatelessWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        padding: const EdgeInsets.only(top: 20.0),
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage('lib/assets/images/bg_f.png'),fit: BoxFit.fill),
        ),
        child: const Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [



            ResetForm(),
            ResetList(),
            //MyAppList(),

          ],
        ),

      ),
    );

  }
}