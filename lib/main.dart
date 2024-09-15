import 'package:flutter/material.dart';
import 'package:trackingsystem/screens/order_detail_screen.dart';
import 'screens/loading_screen.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/status_static_screen.dart';
import 'screens/my_orders_screen.dart';
import 'screens/order_history_screen.dart';
import 'screens/invoice_history_screen.dart';
import 'screens/general_remark_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Merchant App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoadingScreen(),
      routes: {
        '/loading': (context) => const LoadingScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/status_static': (context) => const StatusStatisticsScreen(),
        '/my_orders': (context) => const MyOrdersScreen(),
        '/order_details': (context) => const OrderDetailsScreen(),
        '/order_history': (context) => const OrderHistoryScreen(),
        '/invoice_history': (context) => const InvoiceHistoryScreen(),
        '/general_remark': (context) => const GeneralRemarkScreen(),
      },
    );
  }
}
