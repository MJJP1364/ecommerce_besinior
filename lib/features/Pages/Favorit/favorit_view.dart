import 'package:flutter/material.dart';

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorit'), centerTitle: true),
      body: Center(
        child: Text(
          'Favorit Page',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
