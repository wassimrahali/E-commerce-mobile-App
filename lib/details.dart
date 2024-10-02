import 'package:flutter/material.dart';
import 'package:hey/home.dart';

class prouductDetails extends StatefulWidget {
  final Map<String, dynamic> dataItems; // Explicitly define the type as a map
  const prouductDetails({super.key, required this.dataItems});

  @override
  State<prouductDetails> createState() => _prouductDetailsState();
}

class _prouductDetailsState extends State<prouductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            iconSize: 40,
            selectedItemColor: Colors.orange,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: '*',backgroundColor: Colors.red),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: '*'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: '*'),

            ]),
        endDrawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.grey[200],
          title: Text(widget.dataItems['name']),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.asset(widget.dataItems['image']),
            Center(
              child: Text(widget.dataItems['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  )),
            ),
            Center(
              child: Text(widget.dataItems['description'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child:  Text(
                  '\$${widget.dataItems['price'].toString()}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blueAccent),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                color: Colors.black,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(), // Replace with the widget you're navigating to
                      ),
                    );                  },
                  textColor: Colors.white,
                  child: const Text("Add To Cart"),
                ),
              ),
            )
          ],
        )
    );
  }
}
