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
                  child: Container(
                    height: 120 ,
                    child: Container(
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.laptop,
                                  size: 30,
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
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.phone_android,
                                  size: 30,
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
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.local_offer_rounded,
                                  size: 30,
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
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.electric_bolt_rounded,
                                  size: 30,
                                ),
                              ),
                              Container(height: 8),
                              const Text(
                                'Electronics',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.directions_bike_outlined,
                                  size: 30,
                                ),
                              ),
                              Container(height: 8),
                              const Text(
                                'Bike',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),

                  ),
                ),
                const Text(
                  "Best Selling",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: GridView(gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 230),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Container(
                                color: Colors.grey[200],
                                child:Image.asset("assets/images/1.png"),
                            ),
                            const Text("Air Jordan 1 Mid",style:TextStyle(fontWeight: FontWeight.w600)),
                             Text("Air Jordan 1 Mid",style:TextStyle(color:Colors.grey,fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Container(
                                color: Colors.grey[200],
                                child:Image.asset("assets/images/1.png")
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            Container(
                                color: Colors.grey[200],
                                child:Image.asset("assets/images/1.png")
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
