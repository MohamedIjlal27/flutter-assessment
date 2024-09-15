import 'package:flutter/material.dart';

class AllOrdersScreen extends StatelessWidget {
  const AllOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FCFE),
      body: Column(
        children: [
          Container(
            color: const Color(0xFFF9FCFE),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'All Orders',
                  style: TextStyle(
                    color: Color(0xFF2C3E50),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.download),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.only(bottom: 16.0),
                  child: ListTile(
                    title: const Text('CFC0060300'),
                    trailing: _buildStatusChip(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(int index) {
    final status = [
      'Confirmed',
      'Cancelled',
      'Delivered',
      'Confirmed',
      'Cancelled',
      'Delivered'
    ];
    final colors = [
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.red,
      Colors.green
    ];

    return Chip(
      label: Text(
        status[index],
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: colors[index],
    );
  }
}
