import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  const ButtonNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF4f51dd),
        padding: const EdgeInsets.all(18),
        shape: const CircleBorder(),
      ),
      child: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
