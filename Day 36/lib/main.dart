import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WishlistScreen(),
    );
  }
}

class WishlistScreen extends StatefulWidget {
  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {

  List<Map<String, dynamic>> items = [
    {"name": "Shoes", "liked": false},
    {"name": "Watch", "liked": false},
    {"name": "Headphones", "liked": false},
    {"name": "Bag", "liked": false},
    {"name": "Laptop", "liked": false},
  ];

  @override
  void initState() {
    super.initState();
    print("initState called");
  }

  @override
  void dispose() {
    print("dispose called");
    super.dispose();
  }

  void toggleWishlist(int index) {
    setState(() {
      items[index]["liked"] = !items[index]["liked"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist Toggle"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(items[index]["name"]),
              trailing: IconButton(
                icon: Icon(
                  items[index]["liked"]
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: items[index]["liked"]
                      ? Colors.red
                      : Colors.grey,
                ),
                onPressed: () {
                  toggleWishlist(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}