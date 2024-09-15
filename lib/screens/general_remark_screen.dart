import 'package:flutter/material.dart';

class GeneralRemarkScreen extends StatelessWidget {
  const GeneralRemarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'General Remark',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildRemarkItem(
              'Mr. John Deo',
              'Stock sold out',
              '08/06/2023 20:28',
              '1',
            ),
            _buildRemarkItem(
              'Mr. Emma Deo',
              'Stock sold out',
              '04/06/2023 20:28',
              '2',
            ),
            _buildRemarkItem(
              'Mr. John Deo',
              'Stock sold out',
              '11/06/2023 20:28',
              '2',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRemarkItem(
      String remarkedBy, String remark, String date, String readBy) {
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
              height: 100, // Adjust height as needed
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
                'Remarked By: $remarkedBy',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text('Remark: $remark'),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text('Tags: '),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red[100],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'No Specified Tags',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text('Remark Date: $date'),
              const SizedBox(height: 8),
              Text('Read By: $readBy'),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
