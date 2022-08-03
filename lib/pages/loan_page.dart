import 'package:flutter/material.dart';

class LoanPage extends StatelessWidget {
  const LoanPage({Key? key, required this.controller}) : super(key: key);
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(
          top: 10 * 2,
          left: 10 * 2,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xFF4f51dd),
          ),
        ),
        const Positioned(
          top: 10 * 2,
          left: 30 * 2,
          child: CircleAvatar(
            radius: 7,
            backgroundColor: Color(0xFFe54820),
          ),
        ),
        const Positioned(
          top: 50 * 2,
          left: 50 * 2,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Color(0xFF4f51dd),
          ),
        ),
        const Positioned(
          top: 10 * 2,
          left: 35 * 2,
          child: CircleAvatar(
            radius: 140,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/home_banner.png'),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Please for getting ${'student loan'.toUpperCase()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Quisque velit nisi, pretium ut.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      onPressed: () => {
                        controller.nextPage(
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          curve: Curves.easeIn,
                        )
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF4f51dd),
                        padding: const EdgeInsets.all(18),
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
