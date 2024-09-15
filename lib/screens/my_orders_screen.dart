import 'package:flutter/material.dart';
import 'package:trackingsystem/components/menu_drawer.dart';
import 'all_order_screen.dart';
import '../components/order_details_modal.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9FCFE),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text(
          'My Orders',
          style: TextStyle(
            color: Color(0xFF2C3E50),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const MenuDrawer(), // Use the menu component
      backgroundColor: const Color(0xFFF9FCFE),
      body: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => MyOrdersGrid(),
          );
        },
      ),
    );
  }
}

class MyOrdersGrid extends StatelessWidget {
  const MyOrdersGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: [
          _buildOrderCard(
              context, 'assets/allorders.png', '3.1k', 'All Orders'),
          _buildOrderCard(context, 'assets/draft.png', '3.1k', 'Draft'),
          _buildOrderCard(
              context, 'assets/confirmed.png', '234.1k', 'Confirmed'),
          _buildOrderCard(
              context, 'assets/cancelled.png', '122.3k', 'Cancelled'),
          _buildOrderCard(
              context, 'assets/delivered.png', '678.7k', 'Delivered'),
          _buildOrderCard(context, 'assets/partially_delivered.png', '101.1k',
              'Partially Delivered'),
          _buildOrderCard(
              context, 'assets/rescheduled.png', '678.7k', 'Rescheduled'),
          _buildOrderCard(context, 'assets/failed_to_deliver.png', '101.1k',
              'Failed To Deliver'),
          _buildNavigationCard(context, 'assets/order_details.jpeg',
              'Order Details', const OrderDetailsModal()),
        ],
      ),
    );
  }

  Widget _buildOrderCard(
      BuildContext context, String imagePath, String value, String status) {
    return GestureDetector(
      onTap: () {
        if (status == 'All Orders') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AllOrdersScreen()),
          );
        }
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 40, height: 40),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                status,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationCard(
      BuildContext context, String imagePath, String title, Widget screen) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return DraggableScrollableSheet(
              expand: false,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return screen;
              },
            );
          },
        );
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 40, height: 40),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
