import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'images/sugar.png',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      image: 'images/salt.png',
      stock: 15,
      rating: 4.9,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List Ailsa Sahda"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Container(
        margin: const EdgeInsets.all(8),

        child: GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: items.length,

          itemBuilder: (context, index) {
            final item = items[index];

            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },

              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Hero(
                      tag: item.name,
                      child: Image.asset(item.image, height: 100),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      item.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),

                    Text("Rp ${item.price}"),
                    Text("⭐ ${item.rating}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
