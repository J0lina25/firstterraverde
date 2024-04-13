import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Home';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(

          title: const Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Container(
              width:410,
              height: 190,
              padding: const EdgeInsets.only(top: 150.0,left:70),
              margin: const EdgeInsets.only(right: 10.0,left:10,top: 10.0,bottom:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromRGBO(63, 165, 175, 1),
                image: const DecorationImage(
                  image: NetworkImage("lib/assets/speaker.png"),
                  fit: BoxFit.fitHeight,

                ),
              ),

              child: const Text('Announcements',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            );
          }),
        ),
      ),
    );
  }
}