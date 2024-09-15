import 'package:flutter/material.dart';

class InvoiceHistoryScreen extends StatelessWidget {
  const InvoiceHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Invoice History',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildTimelineItem(
              'Approved',
              'LKR 804',
              'Demo Admin',
              'Super Admin',
            ),
            _buildTimelineItem(
              'Deposited',
              'LKR 804',
              'Demo Admin',
              'Super Admin',
            ),
            _buildTimelineItem(
              'Pending',
              'LKR 804',
              'Demo Admin',
              'Super Admin',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineItem(
      String status, String amount, String admin1, String admin2) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.circle, size: 12, color: Colors.blue),
            const SizedBox(width: 8),
            Text(
              status,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(amount),
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
    );
  }
}
