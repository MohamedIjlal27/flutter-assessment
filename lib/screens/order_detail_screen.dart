import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'View Order Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Image.asset(
                  'assets/order_icon.png',
                  height: 40,
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CF0003034',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('COD: Rs.250'),
                    Text('Weight: 1kg'),
                    Text('Created on: 02/06/2023 14:49'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const Text(
              'Merchant Details',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Iphone Store'),
            const Text('MC-0002'),
            const Text('Pickup Address: 280, Duplication Road, Colombo'),
            const Text('Origin City: Nugegoda'),
            const Text('Origin Warehouse: Trans Express'),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const Text(
              'Customer Details',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('Mr. John Deo'),
            const Text('Nugegoda'),
            const Text('john@gmail.com'),
            const Text('0777678340'),
            const Text('Destination City: Colombo 01'),
            const Text('Destination Warehouse: Trans Express'),
          ],
        ),
      ),
    );
  }
}
