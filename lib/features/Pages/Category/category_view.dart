import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Category'), centerTitle: true),
      body: Center(
        child: Text(
          'Category Page',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
