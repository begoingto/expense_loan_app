import 'package:flutter/material.dart';
import 'package:loan_money/widgets/button_next.dart';

class LoanScreen extends StatelessWidget {
  const LoanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: const [
                  Text('Tianmao'),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
