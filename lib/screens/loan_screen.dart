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
            SizedBox(
              height: 300,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xFF4f51dd),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          // image: NetworkImage('https://bit.ly/3Bpn2Ka'),
                          image: AssetImage('assets/images/loan-1.png')),
                    ),
                  ),
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF4f51dd),
                      // backgroundImage: NetworkImage('https://bit.ly/3PJLIkT'),
                      radius: 40,
                      child: Icon(
                        Icons.monetization_on_outlined,
                        size: 50,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      child: Column(
                        children: [
                          Text(
                            'personal loan conditional'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                                'You can usually find your score for no cost on your credit card statement or online account. You can also pay for it from a credit reporting agency. '),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20),
                      child: ButtonNext(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
