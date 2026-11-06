import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'menu_screen.dart';
import 'pizza_items.dart';

void main() => runApp(const PizzaStoreApp());

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.orange, useMaterial3: true),
      initialRoute: '/menu',
      routes: {
        '/menu': (_) => const MenuScreen(),
        for (final item in menuItems)
          item.routeName: (_) => DetailScreen(item: item),
      },
    );
  }
}
