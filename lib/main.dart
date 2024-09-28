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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: Text('Title',
                style: TextStyle(
                    color: Colors.white),
              ),
              backgroundColor: Colors.amber
          ),
          /*
          body:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple
                ),
                Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ],
            )
          )*/
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.purple
                    ),
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.brown
                    ),
                    Container(
                        width: 100,
                        height: 100,
                        color: Colors.purple
                    ),
                  ],
                )
          )
          )
      ),
    );
  }
}
