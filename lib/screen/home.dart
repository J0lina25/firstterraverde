import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen ({Key?key}) : super(key:key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class  _HomeScreenState extends State<HomeScreen>{
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest API Call'),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context,index){
            final user = users[index];
            final email = user['email'];
        return ListTile(
          title: Text(email),
        );
      }

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUser,
      ),
    );
  }
  void fetchUser() async{
    print('fetchUsers called');
    const url = 'https://randomuser.me/api/?results=2';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['results'];
    });
    print('Fetchuser Completed');
  }
}