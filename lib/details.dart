
import 'package:flutter/material.dart';

class prouductDetails extends StatefulWidget {
  final Map<String, dynamic> dataItems; // Explicitly define the type as a map
  const prouductDetails({super.key,required this.dataItems});

  @override
  State<prouductDetails> createState() => _prouductDetailsState();
}

class _prouductDetailsState extends State<prouductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
        color: Colors.black
      ),
        backgroundColor: Colors.grey[200],
        title: Text(widget.dataItems['name']),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset(widget.dataItems['image'])
        ],
      )
    );
  }
}
