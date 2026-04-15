import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List Ailsa Sahda"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Hero(tag: item.name, child: Image.asset(item.image)),

          Text("Harga: Rp ${item.price}"),
          Text("Stok: ${item.stock}"),
          Text("Rating: ${item.rating}"),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 10),
              Icon(Icons.shopping_cart),
            ],
          ),

          const SizedBox(height: 20),
          const Text(
            "Ailsa Sahda Garizah - 244107060006",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
