import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> expenses = [
      {
        'icon': Icons.local_drink_outlined,
        'title': 'Drink',
        'desc': 'Fanta',
        'price': 3500,
      },
      {
        'icon': Icons.food_bank_sharp,
        'title': 'Food',
        'desc': 'Bif',
        'price': 3500
      }
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Add Category')),
          elevation: 1,
          iconTheme: const IconThemeData(color: Color(0xFF4f2bb5)),
          titleTextStyle: const TextStyle(
              color: Color(0xFF4f2bb5),
              fontWeight: FontWeight.w500,
              fontSize: 20),
          backgroundColor: const Color(0xFFe2d9ff),
        ),
        body: Column(
          children: [for (var item in expenses) titleCard(item: item)],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            showMaterialModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                controller: ModalScrollController.of(context),
                child: modalAdd(),
              ),
            )
          },
          backgroundColor: Color(0xFF4f2bb5),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  modalAdd() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 400,
      child: Text('Hi 202'),
    );
  }

  titleCard({required item}) {
    return Card(
      elevation: 1,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xFFf4f1fd),
          radius: 30,
          child: Icon(item['icon']),
        ),
        title: Text(
          item['title'],
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(item['desc']),
        trailing: Text(item['price'].toString()),
      ),
    );
  }
}
