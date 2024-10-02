import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Define the dynamic list of categories
  List categories = [
    {'icon': Icons.laptop, 'name': 'Laptop'},
    {'icon': Icons.phone_android, 'name': 'Mobile'},
    {'icon': Icons.local_offer_rounded, 'name': 'Clothes'},
    {'icon': Icons.electric_bolt_rounded, 'name': 'Electronics'},
    {'icon': Icons.directions_bike_outlined, 'name': 'Bike'},
  ];

  List bestSellingProducts = [
    {'image': 'assets/images/1.png', 'name': 'Air Jordan 1 Mid', 'description': 'Comfortable and stylish' ,'price':230},
    {'image': 'assets/images/1.png', 'name': 'Nike Air Max', 'description': 'Premium sports shoe','price':99},
    {'image': 'assets/images/1.png', 'name': 'Adidas Yeezy', 'description': 'Modern design','price':730},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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

            // Categories section
            const SizedBox(height: 20),
            const Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            categories[index]['icon'],
                            size: 30,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          categories[index]['name'],
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Best Selling section
            const SizedBox(height: 20),
            const Text(
              "Best Selling",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 330,
              ),
              itemCount: bestSellingProducts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey[200],
                        child: Image.asset(bestSellingProducts[index]['image']),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        bestSellingProducts[index]['name'],
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        bestSellingProducts[index]['description'],
                        style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                      Container(height: 30,),
                      Text(
                        '\$${bestSellingProducts[index]['price'].toString()}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
