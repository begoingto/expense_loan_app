import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_money/widgets/button_next.dart';

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
            Stack(
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
                    backgroundImage:
                        AssetImage('assets/images/home_banner.png'),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                    milliseconds: 500,
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
            ),
            Column(
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 20),
                          child: ElevatedButton(
                            onPressed: () => {
                              controller.previousPage(
                                duration: const Duration(
                                  milliseconds: 500,
                                ),
                                curve: Curves.easeOut,
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
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
