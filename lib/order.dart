class OrderItem {
  final String name;
  final int quantity;
  final double unitPrice;

  const OrderItem({
    required this.name,
    required this.quantity,
    required this.unitPrice,
  });

  double get totalPrice => quantity * unitPrice;
}

class Order {
  final List<OrderItem> items;

  const Order(this.items);
}

double orderTotal(Order order) =>
    order.items.fold(0, (sum, item) => sum + item.totalPrice);
