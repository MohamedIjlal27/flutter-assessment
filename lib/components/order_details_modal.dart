import 'package:flutter/material.dart';
import '../screens/order_detail_screen.dart';
import '../screens/order_history_screen.dart';
import '../screens/invoice_history_screen.dart';
import '../screens/general_remark_screen.dart';

class OrderDetailsModal extends StatelessWidget {
  const OrderDetailsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Order Details'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Order History'),
              Tab(text: 'Invoice History'),
              Tab(text: 'General Remark'),
              Tab(text: 'Order Details'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OrderHistoryScreen(),
            InvoiceHistoryScreen(),
            GeneralRemarkScreen(),
            OrderDetailsScreen(),
          ],
        ),
      ),
    );
  }
}

class _ScrollableContent extends StatelessWidget {
  final Widget child;

  const _ScrollableContent({required this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
          child: child,
        ),
      ),
    );
  }
}
