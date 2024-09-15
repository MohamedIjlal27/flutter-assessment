import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Order History',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildTimelineItem(
              'DELIVERED',
              'Collected COD Rs. 250.00. Rider: Test 09 Rider',
              'Demo Admin',
              'Super Admin',
            ),
            _buildTimelineItem(
              'ASSIGNED TO DESTINATION RIDER',
              'Collected COD Rs. 250.00. Rider: Test 09 Rider',
              'Demo Admin',
              'Super Admin',
            ),
            _buildTimelineItem(
              'RECEIVED TO ORIGIN WAREHOUSE',
              'Collected COD Rs. 250.00. Rider: Test 09 Rider',
              'Demo Admin',
              'Super Admin',
            ),
            _buildTimelineItem(
              'RECEIVED TO ORIGIN WAREHOUSE',
              'Collected COD Rs. 250.00. Rider: Test 09 Rider',
              'Demo Admin',
              'Super Admin',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineItem(
      String status, String description, String admin1, String admin2) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 2,
              height: 100, // Adjust the height as needed
              color: Colors.blue,
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                status,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(description),
              const SizedBox(height: 8),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/admin_avatar.png'),
                    radius: 12,
                  ),
                  const SizedBox(width: 8),
                  Text(admin1),
                  const SizedBox(width: 16),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/admin_avatar.png'),
                    radius: 12,
                  ),
                  const SizedBox(width: 8),
                  Text(admin2),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
