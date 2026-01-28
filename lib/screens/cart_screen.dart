import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.blue,


      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        children: <Widget>[
          const Icon(Icons.shopping_cart_outlined, size: 100, color: Colors.grey),
          const SizedBox(height: 30),
          const Text('Your cart is empty', style: TextStyle(fontSize: 22, color: Colors.grey), textAlign: TextAlign.center),

          const SizedBox(height: 30),
          const Text('Add items to your cart', style: TextStyle(fontSize: 18, color: Colors.grey), textAlign: TextAlign.center),

          const SizedBox(height: 30),
          const Text('Explore our products', style: TextStyle(fontSize: 18, color: Colors.grey), textAlign: TextAlign.center),

          const SizedBox(height: 30),
          Image.asset('assets/eco_friendly.png', height: 110),
          const SizedBox(height: 30),
          Image.asset('assets/delux.png', height: 110),

          const SizedBox(height: 30),
          Image.asset('assets/city_rider.png', height: 110),

          const SizedBox(height: 30),
          Image.asset('assets/cargo_loader.png', height: 110),

          const SizedBox(height: 30),
          Image.asset('assets/cargo loader.png', height: 110),

          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              // TODO: Implement checkout logic
            },
            child: const Text('Proceed to Checkout', style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
