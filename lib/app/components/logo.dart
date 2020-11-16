import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        Image.asset(
          'assets/images/logo.png',
          height: 80,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
