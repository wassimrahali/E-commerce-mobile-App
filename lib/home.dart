import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
              child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintText: "Search",
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.menu,
                      size: 40,
                    ),
                  )
                ],
              ),
              Container(height: 20),
              const Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Container(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.laptop,
                            size: 40,
                          ),
                        ),
                        Container(height: 8),
                        const Text(
                          'Laptop',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.phone_android,
                            size: 40,
                          ),
                        ),
                        Container(height: 8),
                        const Text(
                          'Mobile',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.local_offer_rounded,
                            size: 40,
                          ),
                        ),
                        Container(height: 8),
                        const Text(
                          'Clothes',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(100)),
                          child: const Icon(
                            Icons.electric_bolt_rounded,
                            size: 40,
                          ),
                        ),
                        Container(height: 8),
                        const Text(
                          'Electronics',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
