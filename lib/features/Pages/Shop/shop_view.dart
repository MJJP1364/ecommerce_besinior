import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shop'), centerTitle: true),
      body: Center(
        child: Text(
          'Welcome to the Shop Page',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
