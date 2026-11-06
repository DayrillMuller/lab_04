class PizzaItem {
  final String routeName;
  final String name;
  final String imagePath;
  final String description;

  const PizzaItem({
    required this.routeName,
    required this.name,
    required this.imagePath,
    required this.description,
  });
}

const List<PizzaItem> menuItems = [
  PizzaItem(
    routeName: '/vegetable',
    name: 'Vegetable Pizza',
    imagePath: 'assets/images/vegetable_pizza.jpg',
    description: 'Fresh bell peppers, onions, mushrooms and olives on a tomato base.',
  ),
  PizzaItem(
    routeName: '/cheese',
    name: 'Cheese Pizza',
    imagePath: 'assets/images/cheese_pizza.jpg',
    description: 'Classic mozzarella and tomato sauce on a crispy base.',
  ),
  PizzaItem(
    routeName: '/fries',
    name: 'Box of Fries',
    imagePath: 'assets/images/box_of_fries.jpg',
    description: 'Golden, crispy fries served hot.',
  ),
];
