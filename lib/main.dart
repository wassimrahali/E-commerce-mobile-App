import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("T"),
      ),
      body: Column(

        children: [
          Text("j"),
          Text("j"),
          Text("j"),
          Container()
        ],
      )
    ));

  }
}