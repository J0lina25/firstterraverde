import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class _MyappState extends State<Myapp>{
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> insertrecord() async {
    if(name.text != '' || email.text != '' || password.text != ''){
        try{
          String uri = "";
          var res = await http.post(Uri.parse(uri),body:{
            "name" : name.text,
            "email" : email.text,
            "password" : password.text,
          });

          var response = jsonDecode(res.body);
          if(response["success"]== "true"){
            print('Record Inserted');

          }
          else{
            print('Some issues');
          }
        }
        catch(e){
          print(e);
        }
    } else{
      print("Please fill all the required fields");
    }
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Insert Record');
        ),
        body: Column()
      ),
    ),
  }

}