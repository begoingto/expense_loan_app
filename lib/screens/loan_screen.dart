import 'package:flutter/material.dart';
import 'package:loan_money/widgets/button_next.dart';

class LoanScreen extends StatelessWidget {
  const LoanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> dashboard = [
      {'name': 'Expense', 'icon': Icons.payments},
      {'name': 'Income', 'icon': Icons.monetization_on_outlined},
      {'name': 'Loan', 'icon': Icons.business},
      {'name': 'Chart', 'icon': Icons.pie_chart},
      {'name': 'Category', 'icon': Icons.storefront_outlined},
      {'name': 'Reminder', 'icon': Icons.notifications_active},
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: const [
                  Text(
                    'Tianmao',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4f2bb5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 180,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4f2bb5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 160,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              padding: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: const Color(0xFFe2d9ff),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.centerLeft,
              child: Row(
                children: const [
                  Icon(Icons.notifications_active_outlined),
                  SizedBox(width: 7),
                  Text(
                    'Hope to overcome inertia',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1.65,
                  ),
                  children: [
                    for (var item in dashboard) dashboardItem(item: item)
                  ]),
            )
          ],
        ),
      ),
    );
  }

  dashboardItem({required item}) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFf4f1fd),
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 0.2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            item['icon'],
            size: 40,
            color: Color(0xff3e1ad1),
          ),
          Text(
            item['name'],
            style: TextStyle(color: Color(0xff3e1ad1), fontSize: 18),
          )
        ],
      ),
    );
  }
}
