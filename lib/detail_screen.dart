import 'package:flutter/material.dart';
import 'pizza_items.dart';

class DetailScreen extends StatelessWidget {
  final PizzaItem item;

  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(item.imagePath, height: 220, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text(
              item.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(item.description, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
