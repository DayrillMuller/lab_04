import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('order summary shows items and total RM 25.00', (tester) async {
    const order = Order([
      OrderItem(name: 'Vegetable Pizza', quantity: 1, unitPrice: 15.0),
      OrderItem(name: 'Box of Fries', quantity: 2, unitPrice: 5.0),
    ]);

    await tester.pumpWidget(
      const MaterialApp(home: OrderSummaryScreen(order: order)),
    );

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
    expect(find.text('RM 25.00'), findsOneWidget);
  });
}
