import 'package:flutter/material.dart';

import 'package:loan_money/pages/business_page.dart';
import 'package:loan_money/pages/loan_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            LoanPage(controller: controller),
            BusinessPage(controller: controller)
          ],
        ),
      ),
    );
  }
}
