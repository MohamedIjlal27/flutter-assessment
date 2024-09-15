import 'package:flutter/material.dart';

class StatusStatisticsScreen extends StatelessWidget {
  const StatusStatisticsScreen({super.key});

  static const double cardWidth = 360.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9FCFE),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF9FCFE),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Color(0xFF2C3E50)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  'Status Statistics',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3E50),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildStatusCard(context),
                    _buildStatusTile('Picked Up', Colors.orange),
                    _buildStatusTile('Confirmed', Colors.green),
                    _buildStatusTileWithImage(
                        'Cancelled', Colors.red, 'assets/cancelicon.png'),
                    _buildStatusTileWithImage(
                        'Delivered', Colors.cyan, 'assets/plus.png'),
                    _buildStatusTile('Partially Delivered', Colors.blue),
                    const SizedBox(height: 16),
                    const Text(
                      'see more',
                      style: TextStyle(color: Colors.blue),
                    ),
                    const Icon(Icons.keyboard_arrow_down, color: Colors.blue),
                    const Spacer(),
                    const Text('Powered by curfox.lk'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusCard(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.add_circle, color: Colors.purple, size: 40.67),
                      SizedBox(width: 8),
                      Text('Pickup Rider Assigned'),
                    ],
                  ),
                  const SizedBox(height: 8), // Reduced space
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: _buildStatusInfo(
                            'No of Orders', 'assets/no_of_orders.png', '76'),
                      ),
                      _buildStatusInfo('Delivery Charge',
                          'assets/delivery_charge-1.png', '50371.50'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ratio:'),
                      SizedBox(width: 8),
                      Text('67%'),
                    ],
                  ),
                ],
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.keyboard_arrow_up),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusInfo(String title, String imagePath, String value) {
    return Container(
      padding: const EdgeInsets.all(4.0), // Reduced padding
      decoration: BoxDecoration(
        color: const Color(0xFFE0F7FA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          const SizedBox(height: 4), // Reduced space
          Row(
            children: [
              Image.asset(imagePath, width: 40, height: 40),
              const SizedBox(width: 4), // Reduced space
              Text(
                value,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusTile(String title, Color color) {
    return Container(
      width: cardWidth,
      height: 57,
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(Icons.check_circle, color: color, size: 40.67),
        title: Text(title),
        trailing: const Icon(Icons.keyboard_arrow_down),
      ),
    );
  }

  Widget _buildStatusTileWithImage(
      String title, Color color, String imagePath) {
    return Container(
      width: cardWidth,
      height: 57,
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset(imagePath, width: 40.67, height: 39.67),
        ),
        title: Text(title),
        trailing: const Icon(Icons.keyboard_arrow_down),
      ),
    );
  }
}
