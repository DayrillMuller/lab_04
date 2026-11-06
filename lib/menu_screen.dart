import 'package:flutter/material.dart';
import 'pizza_items.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pizza Store Menu')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final item in menuItems)
            Card(
              color: Colors.orange,
              margin: const EdgeInsets.only(bottom: 16),
              child: ListTile(
                title: Text(
                  item.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                trailing: const Icon(Icons.chevron_right, color: Colors.white),
                onTap: () => Navigator.pushNamed(context, item.routeName),
              ),
            ),
        ],
      ),
    );
  }
}
