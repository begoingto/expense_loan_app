import 'package:flutter/material.dart';
import 'package:loan_money/screens/expence_screen.dart';
import 'package:loan_money/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:loan_money/screens/dashboard_screen.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // useMaterial3: true,
      ),
      initialRoute: 'home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomeScreen(),
          // binding: TodoBinding(),
        ),
        GetPage(
          name: '/dashboard',
          page: () => const DashboardScreen(),
          // binding: TodoBinding(),
        ),
        GetPage(
          name: '/expense',
          page: () => const ExpenseScreen(),
          // binding: TodoBinding(),
        ),
      ],
    );
  }
}
